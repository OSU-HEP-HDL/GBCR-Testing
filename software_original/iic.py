#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
import sys
import copy
import time
import datetime
import struct
import socket
from queue import Queue
from queue import Empty  ##
import threading
from GBCR2_Reg import *
import pyvisa as visa
from command_interpret import *
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.axes_grid1.inset_locator import zoomed_inset_axes
from mpl_toolkits.axes_grid1.inset_locator import mark_inset

'''
@author: Wei Zhang
@date: 2020-11-14
This script is used to test GBCR2 SEU. It mainly includes I2C communication, Ethernet communication, and eight channels bit error record.
'''
hostname = '192.168.2.3'                # FPGA IP address
port = 1024                             # port number



#------------------------------------------------------------------------------------------------#
## IIC write slave device
# @param mode[1:0] : '0'is 1 bytes read or wirte, '1' is 2 bytes read or write, '2' is 3 bytes read or write
# @param slave[7:0] : slave device address
# @param wr: 1-bit '0' is write, '1' is read
# @param reg_addr[7:0] : register address
# @param data[7:0] : 8-bit write data
def iic_write(mode, slave_addr, wr, reg_addr, data):
    val = mode << 24 | slave_addr << 17 | wr << 16 | reg_addr << 8 | data
    cmd_interpret.write_config_reg(4, 0xffff & val)
    cmd_interpret.write_config_reg(5, 0xffff & (val>>16))
    time.sleep(0.01)
    cmd_interpret.write_pulse_reg(0x0001)           # reset ddr3 data fifo
    time.sleep(0.01)

#---------------------------------------------------------------------------------------------#
## IIC read slave device
# @param mode[1:0] : '0'is 1 bytes read or wirte, '1' is 2 bytes read or write, '2' is 3 bytes read or write
# @param slave[6:0]: slave device address
# @param wr: 1-bit '0' is write, '1' is read
# @param reg_addr[7:0] : register address
def iic_read(mode, slave_addr, wr, reg_addr):
    val = mode << 24 | slave_addr << 17 |  0 << 16 | reg_addr << 8 | 0x00     # write device addr and reg addr
    cmd_interpret.write_config_reg(4, 0xffff & val)
    cmd_interpret.write_config_reg(5, 0xffff & (val>>16))
    time.sleep(0.01)
    cmd_interpret.write_pulse_reg(0x0001)                                     # Sent a pulse to IIC module

    val = mode << 24 | slave_addr << 17 | wr << 16 | reg_addr << 8 | 0x00     # write device addr and read one byte
    cmd_interpret.write_config_reg(4, 0xffff & val)
    cmd_interpret.write_config_reg(5, 0xffff & (val>>16))
    time.sleep(0.01)
    cmd_interpret.write_pulse_reg(0x0001)                                     # Sent a pulse to IIC module
    time.sleep(0.01)                                                          # delay 10ns then to read data
    return cmd_interpret.read_status_reg(0) & 0xff

#---------------------------------------------------------------------------------------------#
## Current_Monitor
def Current_monitor():

    I2C_Addr = 0x9e >> 1                        # I2C address of first LTC2991, note that 

    #iic_write(1, I2C_Addr, 0, 0x06, 0x99)       # V1-V2 differential, Filter enabled, V3-V4 differential, Filter enabled
    iic_write(1, I2C_Addr, 0, 0x06, 0x11)       # V1-V2 differential, Filter enabled, V3-V4 differential, Filter enabled
   # print(iic_read(0, I2C_Addr, 1, 0x06))       # read back control register

    iic_write(1, I2C_Addr, 0, 0x01, 0x38)       # V1-V2 and V3-V4 enabled, VCC and T internal enabled

    # print(hex(iic_read(0, I2C_Addr, 1, 0x00)))  # status low 
    # print(hex(iic_read(0, I2C_Addr, 1, 0x01)))  # status high
    V12_Volt = 0
    I12 = 0
    V12_MSB = iic_read(0, I2C_Addr, 1, 0x0C)    # V1-V2 MSB
    V12_LSB = iic_read(0, I2C_Addr, 1, 0x0D)    # V1-V2 LSB
    V12_Valid = (V12_MSB & 0x80) >> 7
    V12_Sign = (V12_MSB & 0x40) >> 6
    if V12_Sign == 0: 
        V12_Volt = ((V12_MSB & 0x3f)<<8 | V12_LSB) * 19.075 * 1E-6
    I12 = 982.5 * V12_Volt -10.489
    #print("V1-V2 volt: %.3f V, I12：%.3f mA"%(V12_Volt, I12))
    
    V34_Volt = 0
    I34 = 0
    V34_MSB = iic_read(0, I2C_Addr, 1, 0x10)    # V3-V4 MSB
    V34_LSB = iic_read(0, I2C_Addr, 1, 0x11)    # V3-V4 LSB
    V34_Valid = (V34_MSB & 0x80) >> 7
    V34_Sign = (V34_MSB & 0x40) >> 6
    if V34_Sign == 0: 
        V34_Volt = ((V34_MSB & 0x3f)<<8 | V34_LSB) * 19.075 * 1E-6
    I34 = 949.0 * V34_Volt + 0.0258
    #print("V3-V4 volt: %.3f V, I34：%.3f mA"%(V34_Volt, I34))


    VCC_MSB = iic_read(0, I2C_Addr, 1, 0x1C)    # VCC MSB
    VCC_LSB = iic_read(0, I2C_Addr, 1, 0x1D)    # VCC LSB

    VCC_Volt = ((VCC_MSB & 0x3f)<<8 | VCC_LSB) * 0.00030518 + 2.5
    # print("VCC volt: %.3f"%VCC_Volt)
    return [I12, I34]
#---------------------------------------------------------------------------------------------#

#---------------------------------------------------------------------------------------------#
def main():
    Slave_Addr = 0x23

    # Rx channel 1 settings
    GBCR2_Reg1.set_CH1_CML_AmplSel(7)
    GBCR2_Reg1.set_CH1_CTLE_MFSR(10)
    GBCR2_Reg1.set_CH1_CTLE_HFSR(7)

    # Rx channel 2 settings
    GBCR2_Reg1.set_CH2_CML_AmplSel(7)
    GBCR2_Reg1.set_CH2_CTLE_MFSR(10)
    GBCR2_Reg1.set_CH2_CTLE_HFSR(7)

    # Rx channel 3 settings
    GBCR2_Reg1.set_CH3_CML_AmplSel(7)
    GBCR2_Reg1.set_CH3_CTLE_MFSR(10)
    GBCR2_Reg1.set_CH3_CTLE_HFSR(7)

    # Rx channel 4 settings
    GBCR2_Reg1.set_CH4_CML_AmplSel(7)
    GBCR2_Reg1.set_CH4_CTLE_MFSR(10)
    GBCR2_Reg1.set_CH4_CTLE_HFSR(7)

    # Rx channel 5 settings
    GBCR2_Reg1.set_CH5_CML_AmplSel(7)
    GBCR2_Reg1.set_CH5_CTLE_MFSR(10)
    GBCR2_Reg1.set_CH5_CTLE_HFSR(7)

    # Rx channel 6 settings
    GBCR2_Reg1.set_CH6_CML_AmplSel(7)
    GBCR2_Reg1.set_CH6_CTLE_MFSR(10)
    GBCR2_Reg1.set_CH6_CTLE_HFSR(7)

    # Rx channel 7 settings
    GBCR2_Reg1.set_CH7_CML_AmplSel(7)
    GBCR2_Reg1.set_CH7_CTLE_MFSR(10)
    GBCR2_Reg1.set_CH7_CTLE_HFSR(7)

    # Tx channel 1 and 2 settings
    GBCR2_Reg1.set_Tx1_Dis_DL_BIAS(0)  
    GBCR2_Reg1.set_Tx2_Dis_DL_BIAS(0)  

    iic_write_val = GBCR2_Reg1.get_config_vector()

    # write I2C register one by one
    for i in range(len(iic_write_val)):
       iic_write(1, Slave_Addr, 0, i, iic_write_val[i])
    print("Expected values:", iic_write_val)

    today = datetime.date.today()
    # TimeD = time.localtime()
    TimeD = time.strftime("%H-%M-%S", time.localtime())
    todaystr = "QAResults"
    timestr = time.strftime("%Y-%m-%d_%H-%M-%S", time.localtime())
    try:
        os.mkdir(todaystr)
        print("Directory %s was created!" % todaystr)
    except FileExistsError:
        print("Directory %s already exists!" % todaystr)
    userdefine_dir = todaystr + "./" + timestr
    try:
        os.mkdir(userdefine_dir)
    except FileExistsError:
        print("User define directories already created!!!")
    store_dict = userdefine_dir

    while True: 
        with open("./%s/I2C.TXT" % (store_dict), 'a') as infile_iic:  
            iic_read_val = []
            for iic_read_index in range(len(iic_write_val)):
                iic_read_val += [iic_read(0, Slave_Addr, 1, iic_read_index)]
            if iic_read_val == iic_write_val:
                print("Written == Read: %s" % (iic_read_val))
                infile_iic.write("Written =  Read: %s\n" % (iic_read_val))
            else:
                print("Written != Read: %s"%(iic_read_val))
                infile_iic.write("Written !=  Read: %s\n" % (iic_read_val))
            # end if
            infile_iic.flush()
        # end with 

        with open("./%s/IDD.TXT" % (store_dict), 'a') as infile_Idd:  
            lasttime = datetime.datetime.now()
            current = Current_monitor()
            print("IDD: %s %.3f %.3f mA" % (lasttime, current[0], current[1]))
            infile_Idd.write("%s %.3f %.3f\n" % (lasttime, current[0], current[1]))
            infile_Idd.flush()
        # end with 
    # end while 
  
 
#------------------------------------------------------------------------------------------------#
## if statement
if __name__ == "__main__":
    try:                                                        # try socket
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)	# initial socket
    except socket.error:
        print("Failed to create socket!")
        sys.exit()
    try:                                                        # try ethernet connection
        s.connect((hostname, port))								# connect socket
    except socket.error:
        print("failed to connect to ip:" + hostname)
    cmd_interpret = command_interpret(s)					    # Class instance
    GBCR2_Reg1 = GBCR2_Reg()                                    # New a class
    try:
        main()													# execute main function
    except KeyboardInterrupt:
        print("\nApplication exit!")
    except:
        print("Command Failed")
    
    s.close()												# close socket

