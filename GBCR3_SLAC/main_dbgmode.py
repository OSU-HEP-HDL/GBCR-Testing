#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
import sys
import copy
import time
import datetime
import struct
import socket
import threading
import numpy as np
import pyvisa as visa
from queue import Queue
from queue import Empty
import matplotlib.pyplot as plt
from mpl_toolkits.axes_grid1.inset_locator import zoomed_inset_axes
from mpl_toolkits.axes_grid1.inset_locator import mark_inset
import pandas as pd
from collections import defaultdict

from GBCR3_Reg import *
from command_interpret import *
from crc32_8 import crc32_8

hostname = '192.168.2.6'  # Fixed FPGA IP address at SLAC
port = 1024  # port number

# ---------------------------
# 
# ------------------------------------------------------------------#
def main():
    today = datetime.date.today()
    todaystr = "QAResults"
    timestr = time.strftime("%Y-%m-%d_%H-%M-%S", time.localtime())
    try:
        os.mkdir(todaystr)
        print("Directory %s was created!" % todaystr)
    except FileExistsError:
        print("Directory %s already exists!" % todaystr)

    userdefine_dir = todaystr + "/" + timestr
    print(userdefine_dir)
    try:
        os.mkdir(userdefine_dir)
    except FileExistsError:
        print("User define directories already created!!!")
    num_file = int(sys.argv[1])  # total files will be read back
    dbg_mode = int(sys.argv[2]) if len(sys.argv) > 2 else 0  # 1 - debug mode; 0/no parameter - normal mode
    store_dict = userdefine_dir

    Receive_data(store_dict, num_file, dbg_mode)
    print(" line 52, All jobs are done!")

def print_bytes_hex(data):
    lin = ['0x%02X' % i for i in data]
    print(" ".join(lin))

def generate_summary(result_dir, dbg_mode=0):
    
    dump_file = f"{result_dir}/ChAll.TXT"
    if os.path.exists(dump_file):
        with open(dump_file, 'r') as in_file:
            print(f"Opened dump file: {dump_file}") 
            lines = in_file.readlines()
    else:
        print(f"Error in opening result file: {dump_file}")
        return  
    
    max_rx = 7
    rxout = [4, 5, 6, 7, 0, 1, 2]

    max_daq = 9
    rxchan = [5, 6, 7, 12, 1, 2, 3, 4, 11]

    start_time = [0] * max_daq
    end_time = [0] * max_daq
    chan_event = [0] * max_daq
    start_gen = [0] * max_daq
    end_gen = [0] * max_daq
    start_obs = [0] * max_daq
    end_obs = [0] * max_daq
    
    start_year = [0] * max_daq
    end_year = [0] * max_daq
    start_month = [0] * max_daq
    end_month = [0] * max_daq
    start_day = [0] * max_daq
    end_day = [0] * max_daq
    start_hour = [0] * max_daq
    end_hour = [0] * max_daq
    start_minute = [0] * max_daq
    end_minute = [0] * max_daq
    start_second = [0] * max_daq
    end_second = [0] * max_daq

    max_frame = 2000

    num_line = 0
    ind_frame = 0
    dbg = (dbg_mode == 1)
    

    for line in lines:
        num_line += 1
        if dbg:
            print(line.strip())
        if not line.strip():
            continue

        ch_date_time = line[:26]
        ch_counters = line[27:].strip()
        tokens = ch_counters.split()

        try:
            chan, injgen, injobs, delCRC, timeStamp, expCode, obsCode, ErrMask, CDC32 = ( int(tokens[0]), int(tokens[1]), int(tokens[2]), int(tokens[3]), 
                int(tokens[4]), int(tokens[5], 16), int(tokens[6], 16), int(tokens[7], 16), int(tokens[8]))
        except ValueError as e:
            print(f"Error parsing line: {line}. Error: {e}")
            continue

        errcnt = 0
        for m in range(32):
            if (ErrMask & (1 << m)) != 0:
                errcnt += 1

        if chan_event[chan] == 0:
            ch_date_time_trimmed = ch_date_time.split('.')[0]
            ch_date_time_ms_trimmed = ch_date_time.split('.')[1]
            year = int(ch_date_time_trimmed[0:4])
            month = int(ch_date_time_trimmed[5:7])
            day = int(ch_date_time_trimmed[8:10])
            hour = int(ch_date_time_trimmed[11:13])
            minute = int(ch_date_time_trimmed[14:16])
            second = int(ch_date_time_trimmed[17:19])
            start_time[chan]   = day*24*60*60 + hour*60*60 + minute*60 + second
            start_year[chan]   = year
            start_month[chan]  = month
            start_day[chan]    = day
            start_hour[chan]   = hour
            start_minute[chan] = minute
            start_second[chan] = second
            start_gen[chan]    = injgen
            start_obs[chan]    = injobs

        #end_time[chan] = datetime.strptime(ch_date_time, "%Y-%m-%d %H:%M:%S")
        ch_date_time_trimmed = ch_date_time.split('.')[0]
        ch_date_time_ms_trimmed = ch_date_time.split('.')[1]
        year = int(ch_date_time_trimmed[0:4])
        month = int(ch_date_time_trimmed[5:7])
        day = int(ch_date_time_trimmed[8:10])
        hour = int(ch_date_time_trimmed[11:13])
        minute = int(ch_date_time_trimmed[14:16])
        second = int(ch_date_time_trimmed[17:19])
        end_time[chan]   = day*24*60*60 + hour*60*60 + minute*60 + second
        end_year[chan]   = year
        end_month[chan]  = month
        end_day[chan]    = day
        end_hour[chan]   = hour
        end_minute[chan] = minute
        end_second[chan] = second
        end_gen[chan] = injgen
        end_obs[chan] = injobs
        chan_event[chan] += 1

    print("End Run Summary\n")
    print("DAQ Lane  Nevt  Date time   Start/ End       dT(min)   Start Inj/Obs     End Inj/Obs             Ninj/    Nobs\n");
    with open(f"{result_dir}/summary.txt", 'w') as out_file:
        out_file.write(f"End of file with {num_line} lines.\n")
        out_file.write("DAQ Lane  Nevt  Date time   Start/ End       dT(min)   Start Inj/Obs     End Inj/Obs             Ninj/    Nobs\n")

    for j in range(max_daq):
        ch_chan = f"RX{rxchan[j]}" if rxchan[j] < 10 else f"TX{rxchan[j] - 10}"

        if chan_event[j] == 0:
            with open(f"{result_dir}/summary.txt", 'a') as out_file:
                out_file.write(f"Ch{j} {ch_chan:4} {chan_event[j]:5}\n")
            print(f"Ch{j} {ch_chan:4} {chan_event[j]:5}")
        else:
            tstart = f"{start_year[j]:04d}-{start_month[j]:02d}-{start_day[j]:02d} {start_hour[j]:02d}:{start_minute[j]:02d}:{start_second[j]:02d}"
            tend = f"{end_hour[j]:02d}:{end_minute[j]:02d}:{end_second[j]:02d}"

            del_minute = (end_time[j] - start_time[j]) / 60 if end_time[j] and start_time[j] else 0
            with open(f"{result_dir}/summary.txt", 'a') as out_file:
                out_file.write(f"Ch{j} {ch_chan:4} {chan_event[j]:5} {tstart:17} / {tend:9} {del_minute:6.1f} "
                  f"{start_gen[j]:6} / {start_obs[j]:10}  {end_gen[j]:6} / {end_obs[j]:10}  "
                  f"{end_gen[j] - start_gen[j]:6} / {end_obs[j] - start_obs[j]:7}\n")
            print(f"Ch{j} {ch_chan:4} {chan_event[j]:5} {tstart:17} / {tend:9} {del_minute:6.1f} "
                  f"{start_gen[j]:6} / {start_obs[j]:10}  {end_gen[j]:6} / {end_obs[j]:10}  "
                  f"{end_gen[j] - start_gen[j]:6} / {end_obs[j] - start_obs[j]:7}")

    print(f"Summary written to {result_dir}/summary.txt")



def Receive_data(store_dict, num_file, dbg_mode=0):
    # begin iic initilization -----------------------------------------------------------------------------------#
    # write, read back, and compare

    Slave_Addr = 0x23
    GBCR3_Reg1 = GBCR3_Reg()
    print("start GBCR3 reg config")
    
    iic_write_val = [0 for i in range(32)] 
    print("declared iic_write_val")
    
    #If you would like to use the Default values:
    iic_write_val = GBCR3_Reg1.configure_all(iic_write_val)

    #If you would like to use the Different values, comment the line above and:
    # iic_write_val = GBCR3_Reg1.configure_rx_channels(iic_write_val, ch=6, dis_chan=1)
    # iic_write_val = GBCR3_Reg1.configure_tx(iic_write_val)
    # iic_write_val = GBCR3_Reg1.configure_external_clock(iic_write_val)
    # iic_write_val = GBCR3_Reg1.configure_dll(iic_write_val)
    
    print("Line 206, Written values are ", end = "")
    print_bytes_hex(iic_write_val)
    # ## write data into I2C register one by one
    for i in range(len(iic_write_val)):
        iic_write(1, Slave_Addr, 0, i, iic_write_val[i])
    print("Written values:", iic_write_val)

    ## read back data from I2C register one by one
    iic_read_val = []
    for i in range(len(iic_write_val)):
        iic_read_val += [iic_read(0, Slave_Addr, 1, i)]
    if iic_read_val == iic_write_val:
        print("Written =  Read: %s"%(iic_read_val))
    else:
        print("Written != Read: %s"%(iic_read_val))
    #end iic initilization -----------------------------------------------------------------------------------#

    if os.path.exists(f"./{store_dict}/Filesummary.TXT") == False:
        with open(f"./{store_dict}/Filesummary.TXT", 'w') as infile:
            infile.write('# File_num  Filler_Frames  Aligned_OK  Aligned_Err  NotAligned_Err  NotAligned_OK  Alignment_Loss  Bad_ChannelID  Total_Frames\n')

    total_stats = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    current_file_number = 0

    single_ch_stats = [0] * 18


    for files in range(num_file):

        current_file_number += 1

        if files % 10 == 0:
            # # read back data from I2C register one by one
            with open("./%s/I2C.TXT" % store_dict, 'a') as infile_iic:
                lasttime = datetime.datetime.now()
                iic_read_val = []
                for iic_read_index in range(len(iic_write_val)):
                    iic_read_val += [iic_read(0, Slave_Addr, 1, iic_read_index)]
                if iic_read_val == iic_write_val:
                    if dbg_mode == 1: print("%s W == R: %s" % (lasttime, iic_read_val))
                    infile_iic.write("%s Written ==  Read: %s\n" % (lasttime, iic_read_val))
                else:
                    if dbg_mode == 1: print("%s W!= R: %s" % (lasttime, iic_read_val))
                    infile_iic.write("%s Written !=  Read: %s\n" % (lasttime, iic_read_val))
                # end if
                infile_iic.flush()
            # end with

            # # read supply current IDD
            with open("./%s/IDD.TXT" % store_dict, 'a') as infile_Idd:
                lasttime = datetime.datetime.now()
                current = Current_monitor()
                if dbg_mode == 1: print("IDD: %s %.3f mA" % (lasttime, current[1]))
                infile_Idd.write("%s %.3f mA\n" % (lasttime, current[1]))
                infile_Idd.flush()
            # end with
        # end if files % 10 == 0

        mem_data = cmd_interpret.read_data_fifo(50000)
        # ensure mem_data have 50001 byte
        for i in range(50000 - len(mem_data)):
            mem_data.append(0)
        mem_data.append(-1)
        if files % 10 == 0:
            if dbg_mode == 1: print("{} is producing {} to the queue!".format('Receive_data', files))
        # end if files % 10 == 0 
        # exec_data(mem_data, store_dict, dbg_mode)
        file_stats, current_channel_stats = exec_data(mem_data, store_dict, dbg_mode, current_file_number)

        for i in range(len(total_stats)):
            total_stats[i] += file_stats[i]

        for i in range(len(current_channel_stats)):
            single_ch_stats[i] += current_channel_stats[i]
            
        if files % 20 == 0: print("{} files have been processed!".format(files))
        # 20220428 #for i in range(50000):
        # 20220428 #    self.queue.put(mem_data[i])
    # end for files in range(self.num_file)
    print("line 266, 'Receive_data' finished!")

    print("\nFiles Summary:")
    print('File_num  Filler_Frames  Aligned_OK  Aligned_Err  NotAligned_Err  NotAligned_OK  Alignment_Loss  Bad_ChannelID  All_filler_files\n')
    print("{:<10} {:<14} {:<11} {:<12} {:<15} {:<14} {:<15} {:<14} {:<13}".format(
        total_stats[0], total_stats[1], total_stats[2], total_stats[3], 
        total_stats[4], total_stats[5], total_stats[6], total_stats[7], total_stats[8]))

    print("\nChannel Statistics Summary:")
    print("Channel | Aligned OK | Aligned Error")
    print("--------|------------|-------------")
    for i in range(9):
        print(f"   {i}    |    {single_ch_stats[i]:6d}   |    {single_ch_stats[i+8]:6d}")

    with open("./%s/Filesummary.TXT" % (store_dict), 'a') as infile:
        infile.write('File_num  Filler_Frames  Aligned_OK  Aligned_Err  NotAligned_Err  NotAligned_OK  Alignment_Loss  Bad_ChannelID  All_filler_files\n')
        infile.write('%d %d %d %d %d %d %d %d %d\n' % (total_stats[0], total_stats[1], total_stats[2], total_stats[3], 
                                                       total_stats[4], total_stats[5], total_stats[6], total_stats[7], total_stats[8]))
        infile.write("Channel Statistics Summary:\n")
        infile.write("Channel | Aligned OK | Aligned Error\n")
        infile.write("--------|------------|-------------\n")
        for i in range(9):
            infile.write(f"   {i}    |    {single_ch_stats[i]:6d}   |    {single_ch_stats[i+8]:6d}\n")
        infile.flush()
    
    generate_summary(store_dict, dbg_mode)
    # 20220428 #self.queue.put(-1)
# end def run
# ---------------------------------------------------------------------------------------------#

# ---------------------------------------------------------------------
# ------------------------#
def exec_data(mem_data, store_dict, dbg_mode=0, current_file_number=0):
    isEnd = False
    count = 0
    aligned = 0
    i = 0

    dbg = (dbg_mode == 1)
    #
    # Collect frame stat=2*Aligned+Err by channel  
    # Ch=9 is filler without channel ID 
    #
    ChStat = [
        [0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0]
    ]
    # for i in range(6250)
    while i < 50001:
        # get 8 words to combine a frame
        val = [0, 0, 0, 0, 0, 0, 0, 0]
        for k in range(8):
            if i > 50000:
                isEnd = True
            else:
                val[k] = mem_data[i]
                i = i + 1
            #end if
        if val[-1] < 0:
            # print("line 204", val)
            isEnd = True
        if isEnd:
            break
        Rawdata = val[0] << (96 + 128) | val[1] << (64 + 128) | val[2] << (32 + 128) | val[3] << 128 | val[4] << 96 | val[5] << 64 | val[6] << 32 | val[7]
        # end get 8 words
        # if i<200: 
        #  print("i=%5i aligned=%i Rawdata=%x" % (i,aligned,Rawdata) )
        # #end if
        # tentative evaluation Error flag and channel ID  
        StatErr  = val[0]>>31&1 
        StatChan = val[0]>>27&0xF  

        aligned_error_counter = 0
        if aligned == 1:
            error_flag = (
                                 Rawdata & 0x8000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000) >> (127 + 128)  # error flag

            # if aligned, display on the screen and save to files
            if error_flag == 1:
                aligned_error_counter += 1
                channel_id = (
                                     Rawdata & 0x7800_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000) >> (
                                     123 + 128)  # channel Id
                time_stamp = (
                                     Rawdata & 0x07ff_ffff_ffff_f800_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000) >> (
                                     79 + 128 - 4)  # time stamp
                inject_error = (
                                       Rawdata & 0x0000_0000_0000_07ff_f800_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000) >> (
                                       59 + 128)  # inject error
                expected_code = (
                                        Rawdata & 0x0000_0000_0000_0000_07ff_ffff_f800_0000_0000_0000_0000_0000_0000_0000_0000_0000) >> (
                                        27 + 128)
                received_code = (
                                        Rawdata & 0x0000_0000_0000_0000_0000_0000_07ff_ffff_f800_0000_0000_0000_0000_0000_0000_0000) >> 123  # received data
                error_position = (
                                         Rawdata & 0x0000_0000_0000_0000_0000_0000_0000_0000_07ff_ffff_f800_0000_0000_0000_0000_0000) >> 91
                error_counter = (
                                        Rawdata & 0x0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_07ff_ffff_ffff_ffff_0000_0000) >> 32
                crc32 = (
                                Rawdata & 0x0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_ffff_ffff) >> 0
                cal_crc_data = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                for k in range(28):
                    shift = 0xff00_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000 >> (k * 8)
                    cal_crc_data[k] = (Rawdata & shift) >> (248 - k * 8)
                # end for
                cal_crc32 = crc32_8(cal_crc_data[0], 0xffff_ffff)
                for k in range(27):
                    cal_crc32_t = crc32_8(cal_crc_data[k + 1], cal_crc32)
                    cal_crc32 = cal_crc32_t

                Time = datetime.datetime.now()
                if dbg == 1 and aligned_error_counter < 20: 
                    print('%s %d %d %d %d %d %08x %08x %08x %d' % (Time, channel_id, inject_error, error_counter, cal_crc32 - crc32, time_stamp,
                    expected_code, received_code, error_position, crc32))
                with open("./%s/ChAll.TXT" % store_dict, 'a') as infile:  # # 'a': add, will not cover previous infor
                    infile.write('%s %d %d %d %d %d %08x %08x %08x %d\n' % (
                        Time, channel_id, inject_error, error_counter, cal_crc32 - crc32, time_stamp,
                        expected_code, received_code, error_position, crc32))
                    infile.flush()
                with open("./%s/Ch%d.TXT" % (store_dict, channel_id), 'a') as infile:  # # 'a': add, will not cover previous infor
                    infile.write('%s %d %d %d %d %d %08x %08x %08x %d\n' % (
                        Time, channel_id, inject_error, error_counter, cal_crc32 - crc32, time_stamp,
                        expected_code, received_code, error_position, crc32))
                    infile.flush()
                # Frame stat Aligned with Error
                if channel_id < 10:
                    ChStat[3][channel_id] = ChStat[3][channel_id] + 1
                else:
                    if dbg == 1: print("Bad channel_id %i" % channel_id)
                    ChStat[3][10] = ChStat[3][10] + 1
                #end if
            else:  # error_flag != 1
                if Rawdata == 0x3c5c_7c5c_0000_0000_0000_0000_1234_4321_7d6d_7a5a_0000_0000_0000_0000_5566_6655:
                    ChStat[2][9] = ChStat[2][9] + 1 
                else:
                    channel_id = (
                                     Rawdata & 0x7800_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000) >> (
                                     123 + 128)  # channel Id
                    crc32 = (
                                Rawdata & 0x0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_ffff_ffff) >> 0
                    cal_crc_data = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                    for k in range(28):
                        shift = 0xff00_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000 >> (k * 8)
                        cal_crc_data[k] = (Rawdata & shift) >> (248 - k * 8)
                    cal_crc32 = crc32_8(cal_crc_data[0], 0xffff_ffff)
                    for k in range(27):
                        cal_crc32_t = crc32_8(cal_crc_data[k + 1], cal_crc32)
                        cal_crc32 = cal_crc32_t
                        
                    if cal_crc32 - crc32 == 0 and channel_id < 10:
                        ChStat[2][channel_id] = ChStat[2][channel_id] + 1
                    else:
                        aligned = 0
                        if dbg == 1: print("Line 407, ALignment loss Rawdata is %x" % Rawdata)
                        ChStat[2][10] = ChStat[2][10] + 1
            # end if error_flag
        else:  # aligned != 1
            if i<200 and dbg == 1:
                print("Not aligned chan=%i  Rawdata=%x" % (StatChan,Rawdata))
            while aligned == 0:
                if i > 50000:
                    isEnd = True
                else:
                    value = mem_data[i]
                    i = i + 1
                    if value < 0:
                        isEnd = True
                    else:
                        for k in range(7):
                            val[k] = val[k + 1]
                        val[7] = value
                        Rawdata = val[0] << (96 + 128) | val[1] << (64 + 128) | val[2] << (32 + 128) | val[3] << 128 | val[4] << 96 | val[5] << 64 | val[6] << 32 | val[7]
                    # end if
                    if Rawdata == 0x3c5c_7c5c_0000_0000_0000_0000_1234_4321_7d6d_7a5a_0000_0000_0000_0000_5566_6655:
                        #print("aligned here")
                        aligned = 1
                        # Filler frame without channel - use chan=9
                        ChStat[2][9] = ChStat[2][9] + 1;
                    else:
                        #print("not aligned here")
                        aligned = 0
                        # make best attempt to dead reckoning alignment for no-alignment frames 
                        remainder = i % 8
                        if isEnd==0 and remainder==1:  
                            ErrNA  = val[0]>>31&1 
                            ChanNA = val[0]>>27&0xF
                            if ChanNA>9:
                                if dbg == 1: print("Not aligned i=%i bad chan=%i  Rawdata=%x" % (i,ChanNA,Rawdata))
                                ChanNA = 9
                            else:
                                if dbg == 1: print("Not aligned i=%i chan=%i  Rawdata=%x" % (i,ChanNA,Rawdata))
                            #end if
                            ChStat[ErrNA][ChanNA] = ChStat[ErrNA][ChanNA] + 1 
                        #end if remainer = 1 
                    # end if
                if isEnd:
                    break
            # end while aligned
        # end if aligned
    # end for 6250. One buffer is done.

    #print("loops ended")
    ChanCnt_NA_OK = 0
    ChanCnt_NA_Err = 0
    ChanCnt_AL_Err = 0
    ChanCnt_AL_OK = 0
    Total_frames = 0
    
    for n in range(3):
        if n == 0:
            for m in range(11):
                ChanCnt_NA_OK = ChanCnt_NA_OK + ChStat[n][m]
        if n == 1:
            for m in range(11):
                ChanCnt_NA_Err = ChanCnt_NA_Err + ChStat[n][m]
        if n > 1:
            for m in range(9):
                if dbg == 1:
                    print(" file summary Chan %i: Data frame Aligned Err/OK=%i/%i" % (m,ChStat[3][m],ChStat[2][m]))
                ChanCnt_AL_Err += ChStat[3][m]
                ChanCnt_AL_OK  += ChStat[2][m]

    if dbg == 1:
        print(" file summary filler frames= %i" % (ChStat[2][9]))
        print(" file summary aligned data OK= %i" % (ChanCnt_AL_OK))
        print(" file summary aligned data Err= %i" % (ChanCnt_AL_Err))
        print(" file summary: Not aligned Err/OK=%i/%i" % (ChanCnt_NA_Err,ChanCnt_NA_OK))
        print(" file summary ALignment loss: %i" % (ChStat[2][10]))
        print(" file summary Aligned with Error, bad channel id: %i" % (ChStat[3][10]))
        print(" Next File...")
        
    Total_frames = ChStat[2][9] + ChanCnt_AL_OK + ChanCnt_AL_Err + ChanCnt_NA_Err + ChanCnt_NA_OK + ChStat[2][10] + ChStat[3][10]

    data_exist_counter = ChanCnt_AL_OK + ChanCnt_AL_Err

    file_stats = [1,ChStat[2][9], ChanCnt_AL_OK, ChanCnt_AL_Err, ChanCnt_NA_Err, ChanCnt_NA_OK, ChStat[2][10], 
                 ChStat[3][10], 1 if data_exist_counter == 0 else 0]

    current_channel_stats = []
    for i in range(9):
        current_channel_stats.append(ChStat[2][i]) 
    for i in range(9):
        current_channel_stats.append(ChStat[3][i])


    with open("./%s/Filesummary.TXT" % (store_dict), 'a') as infile:
        infile.write('%d %d %d %d %d %d %d %d %d\n' % (
                    current_file_number, file_stats[1], file_stats[2], file_stats[3], file_stats[4], file_stats[5], file_stats[6], file_stats[7], Total_frames))
        infile.flush()
    return file_stats, current_channel_stats
        #end if
    #end for
    #print(" line 306 %s finished!" % self.name)


# --------------------------------------------------------------------------#



# ---------------------------------------------------------------------------------------------#
## Current_Monitor
def Current_monitor():
    I2C_Addr = 0x9e >> 1  # I2C address of first LTC2991, note that

    # iic_write(1, I2C_Addr, 0, 0x06, 0x99)       # V1-V2 differential, Filter enabled, V3-V4 differential, Filter enabled
    iic_write(1, I2C_Addr, 0, 0x06, 0x11)  # V1-V2 differential, Filter enabled, V3-V4 differential, Filter enabled
    # print(iic_read(0, I2C_Addr, 1, 0x06))       # read back control register

    iic_write(1, I2C_Addr, 0, 0x01, 0x38)  # V1-V2 and V3-V4 enabled, VCC and T internal enabled

    # print(hex(iic_read(0, I2C_Addr, 1, 0x00)))  # status low 
    # print(hex(iic_read(0, I2C_Addr, 1, 0x01)))  # status high
    V12_Volt = 0
    I12 = 0
    V12_MSB = iic_read(0, I2C_Addr, 1, 0x0C)  # V1-V2 MSB
    V12_LSB = iic_read(0, I2C_Addr, 1, 0x0D)  # V1-V2 LSB
    V12_Valid = (V12_MSB & 0x80) >> 7
    V12_Sign = (V12_MSB & 0x40) >> 6
    if V12_Sign == 0:
        V12_Volt = ((V12_MSB & 0x3f) << 8 | V12_LSB) * 19.075 * 1E-6
    I12 = 982.5 * V12_Volt - 10.489
    # print("V1-V2 volt: %.3f V, I12：%.3f mA"%(V12_Volt, I12))

    V34_Volt = 0
    I34 = 0
    V34_MSB = iic_read(0, I2C_Addr, 1, 0x10)  # V3-V4 MSB
    V34_LSB = iic_read(0, I2C_Addr, 1, 0x11)  # V3-V4 LSB
    V34_Valid = (V34_MSB & 0x80) >> 7
    V34_Sign = (V34_MSB & 0x40) >> 6
    if V34_Sign == 0:
        V34_Volt = ((V34_MSB & 0x3f) << 8 | V34_LSB) * 19.075 * 1E-6
    I34 = 949.0 * V34_Volt + 0.0258
    # print("V3-V4 volt: %.3f V, I34：%.3f mA"%(V34_Volt, I34))

    VCC_MSB = iic_read(0, I2C_Addr, 1, 0x1C)  # VCC MSB
    VCC_LSB = iic_read(0, I2C_Addr, 1, 0x1D)  # VCC LSB

    VCC_Volt = ((VCC_MSB & 0x3f) << 8 | VCC_LSB) * 0.00030518 + 2.5
    # print("VCC volt: %.3f"%VCC_Volt)
    return [I12, I34]


# ---------------------------------------------------------------------------------------------#

# ---------------------------------------------------------------------------------------------#
# # IIC write slave device
# @param mode[1:0] : '0'is 1 bytes read or wirte, '1' is 2 bytes read or write, '2' is 3 bytes read or write
# @param slave[7:0] : slave device address
# @param wr: 1-bit '0' is write, '1' is read
# @param reg_addr[7:0] : register address
# @param data[7:0] : 8-bit write data
def iic_write(mode, slave_addr, wr, reg_addr, data):
    val = mode << 24 | slave_addr << 17 | wr << 16 | reg_addr << 8 | data
    cmd_interpret.write_config_reg(4, 0xffff & val)
    cmd_interpret.write_config_reg(5, 0xffff & (val >> 16))
    time.sleep(0.1)
    cmd_interpret.write_pulse_reg(0x0001)  # reset ddr3 data fifo
    time.sleep(0.1)


# ---------------------------------------------------------------------------------------------#


# ---------------------------------------------------------------------------------------------#
## IIC read slave device
# @param mode[1:0] : '0'is 1 bytes read or wirte, '1' is 2 bytes read or write, '2' is 3 bytes read or write
# @param slave[6:0]: slave device address
# @param wr: 1-bit '0' is write, '1' is read
# @param reg_addr[7:0] : register address
def iic_read(mode, slave_addr, wr, reg_addr):
    val = mode << 24 | slave_addr << 17 | 0 << 16 | reg_addr << 8 | 0x00  # write device addr and reg addr
    cmd_interpret.write_config_reg(4, 0xffff & val)
    cmd_interpret.write_config_reg(5, 0xffff & (val >> 16))
    time.sleep(0.01)
    cmd_interpret.write_pulse_reg(0x0001)  # Sent a pulse to IIC module

    val = mode << 24 | slave_addr << 17 | wr << 16 | reg_addr << 8 | 0x00  # write device addr and read one byte
    cmd_interpret.write_config_reg(4, 0xffff & val)
    cmd_interpret.write_config_reg(5, 0xffff & (val >> 16))
    time.sleep(0.01)
    cmd_interpret.write_pulse_reg(0x0001)  # Sent a pulse to IIC module
    time.sleep(0.1)  # delay 10ns then to read data
    return cmd_interpret.read_status_reg(0) & 0xff


# ---------------------------------------------------------------------------------------------#



# ------------------------------------------------------------------------------------------------#
## if statement
if __name__ == "__main__":
    try:  # try socket
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)  # initial socket
    except socket.error:
        print("Failed to create socket!")
        sys.exit()
    try:  # try ethernet connection
        s.connect((hostname, port))  # connect socket
    except socket.error:
        print("failed to connect to ip:" + hostname)
    cmd_interpret = command_interpret(s)  # Class instance
    GBCR3_Reg1 = GBCR3_Reg()  # New a class
    try:
        main()  # execute main function
    except KeyboardInterrupt:
        print("\nApplication exit!")
    except:
        print("Command Failed")

    s.close()  # close socket
