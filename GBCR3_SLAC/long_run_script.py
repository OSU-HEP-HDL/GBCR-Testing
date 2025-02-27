import argparse, os, inputimeout

parser = argparse.ArgumentParser(prog="main", formatter_class = argparse.ArgumentDefaultsHelpFormatter)
parser.add_argument('-a', '--address', help='Last digit of IP address', required=True)
parser.add_argument('-c', '--cycles', type=int, help='Number of cycles you want to run', required=True)
parser.add_argument('-d', '--debug', type=int, help='Print out the debugging messages', default=0, choices=[0, 1])
args = vars(parser.parse_args())

command = "python3 main.py -a "+args["address"]+" -c "+str(args["cycles"])
if(args["debug"]==1):
    command+=" -d 1"

ans = "n"
end = False
while(not end):
    os.system(command)

    try:
        ans = inputimeout.inputimeout(prompt="End Run (Y/N): ", timeout = 30).lower()
    except:
        ans = "n"

    if(ans=="y"):
        end = True
