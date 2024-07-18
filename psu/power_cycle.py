import pyvisa as vs
import serial as ps
import time

instName = 'ASRL/dev/ttyUSB1::INSTR'
serNum = b"++addr 1\n"
#serNum = b"++addr 5\n"

def powerCycle(ser, inst):
    ser.write(serNum); time.sleep(0.5)
    
    isOn = inst.query_ascii_values('OUTP?')
    if(isOn[0] == 1):
        inst.write('OUTP OFF'); time.sleep(0.5)

    channels = ["OUTP1", "OUTP2"]
    for thisChan in channels:
        channelSel = "INST:SEL "+thisChan
        inst.write(channelSel); time.sleep(0.5)
        inst.write("APPL 1.26, 0.25"); time.sleep(0.5)
        inst.write('OUTP ON'); time.sleep(0.5)

    print(inst.query_ascii_values('OUTP?'))

if __name__ == "__main__":
    rm = vs.ResourceManager()
    inst = rm.open_resource(instName)
    ser = ""

    if(instName=='ASRL/dev/ttyUSB1::INSTR'):
        inst.baud_rate = 9600
        ser = ps.Serial('/dev/ttyUSB1')

    powerCycle(ser, inst)
