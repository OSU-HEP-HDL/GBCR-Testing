import pyvisa as vs
import serial as ps
import string
import time

#Create Serial Manager
#ser = ps.Serial('/dev/ttyUSB9')
#serials = ['++addr 5', '++addr 0']

#Create Resource Manager
rm = vs.ResourceManager()
#inst = rm.open_resource('ASRL/dev/ttyUSB9::INSTR')
#inst.baud_rate = 9600
inst = rm.open_resource('TCPIP::192.168.2.10::inst0::INSTR')

print(inst.query_ascii_values("INST?", converter='s'))

#print(rm.list_resources())
#inst = rm.open_resource('GPIB::5::INSTR')
#vals = inst.query_ascii_values('MEAS:CURR? (@1,2)')

#Set Voltage and CUrrent
# isOn = inst.query_ascii_values('OUTP?')
# if(isOn[0]==1):
#     inst.query_ascii_values('OUTP OFF')

# #inst.query_ascii_values('INST:SEL OUTP1')
# #inst.query_ascii_values('VOLT 0.5')
# #vals2 = inst.query_ascii_values('MEAS:CURR?')
# #print(vals2)

# i==0
# while(i<10000000):
#     for thisSer in serials:
#         ser.write(thisSer)
#         currents = isnt.query_ascii_values('MEAS:CURR?')
#     time.sleep(30)
#     i+=1
