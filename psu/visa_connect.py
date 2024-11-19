import pyvisa as vs
import serial as ps
from datetime import datetime
import time

# instName = 'TCPIP::192.168.2.10::inst0::INSTR'
# fpgaMap = {"": {"CH1": "1", "CH2": "2"}}

#instName = 'ASRL/dev/ttyUSB9::INSTR'
instName = 'ASRL/dev/ttyUSB0::INSTR'
fpgaMap = {b"++addr 1\n": {"OUTP1": "4", "OUTP2": "3"},
           b"++addr 5\n": {"OUTP1": "5", "OUTP2": "6"}}

def setVoltage(ser, inst):
    global fpgaMap

    print("TURNING POWER SUPPLIES ON")
    isOn = inst.query_ascii_values('OUTP?')
    if(isOn[0]==1):
        inst.write('OUTP OFF')
    
    for thisSer in fpgaMap.keys():
        channels = fpgaMap[thisSer]
        for thisChan in channels.keys():
            channelSel = "INST:SEL "+thisChan
            if(thisSer!=''):
                ser.write(thisSer); time.sleep(0.5)
            inst.write(channelSel); time.sleep(0.5)
            inst.write("APPL 1.26, 0.25"); time.sleep(0.5)
        inst.write('OUTP ON'); time.sleep(0.5)

def turnPowerOff(ser, inst):
    global fpgaMap

    print("TURNING POWER SUPPLIES OFF")
    for thisSer in fpgaMap.keys():
        channels = fpgaMap[thisSer]
        for thisChan in channels.keys():
            channelSel = "INST:SEL "+thisChan
            if(thisSer!=''):
                ser.write(thisSer)
            inst.write(channelSel); time.sleep(0.5)
        inst.write('OUTP OFF'); time.sleep(0.5)

def recordCurrent(ser, inst):
    global fpgaMap

    currFile = open("./Currents.txt", 'w')
    currFile.write("IP Address - Time - Current (A)\n")
    i = 0
    currents = ""
    while(i<2000):
        print("("+str(i)+"/2000) Still Recording Currents: "+currents)
        thisTime = datetime.now().strftime("%H_%M_%S")
        currents = ""
        for thisSer in fpgaMap.keys():
            channels = fpgaMap[thisSer]
            for thisChan in channels.keys():
                channelSel = "INST:SEL "+thisChan
                if(thisSer!=''):
                    ser.write(thisSer); time.sleep(0.5)
                inst.write(channelSel); time.sleep(0.5)
                vals = inst.query_ascii_values('MEAS:CURR?')
                thisIP = channels[thisChan]
                currents += str(vals[0]) + ", "
                currString = thisIP + " - " + thisTime + " - " + str(vals[0])+"\n"
                currFile.write(currString)

        time.sleep(60)
        i+=1
    currFile.close()
            
if __name__ == "__main__":    
    rm = vs.ResourceManager()
    inst = rm.open_resource(instName)
    ser = ""

    if(instName=='ASRL/dev/ttyUSB9::INSTR'):
        inst.baud_rate = 9600
        ser = ps.Serial('/dev/ttyUSB9')

    #setVoltage(ser, inst)
    recordCurrent(ser, inst)
    #turnPowerOff(ser, inst)
