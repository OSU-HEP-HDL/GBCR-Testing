import glob

#inDir = "/home/hep/Desktop/GBCR_Work/software_Evan/QAResults_3/2024-07-11_00-12-52/*"
#inDir = "*"
#inDir = "/home/hep/Desktop/GBCR_Work/software_Evan/QAResults_4/2024-07-11_11-32-41/*"
import sys
inDir = sys.argv[1]+"*"

allFiles = glob.glob(inDir)
chFiles = [thisFile for thisFile in allFiles if "Ch" in thisFile]

print("Channel: Final Injected - Final Error - Delta Error - Delta Mod")

for thisFile in chFiles:
    if("All" in thisFile):
        continue
    inFile = open(thisFile)
    allLines = inFile.readlines()
    finalLine = allLines[-1].split()
    finalInjection = int(finalLine[3]); finalError = int(finalLine[4])

    pError = 0; fInd = 0
    for iL in range(len(allLines)):
        thisLine = allLines[iL].split()
        thisError = int(thisLine[4])

        if(iL==0):
            pError = thisError
            continue

        dError = thisError - pError
        if(dError > 50):
            fInd = iL
            break
        pError = thisError

    firstLine = allLines[fInd].split()
    firstInjection = int(firstLine[3]); firstError = int(firstLine[4])

    splitFile = thisFile.split('/')
    chName = splitFile[-1]
    delta = finalError - firstError
    deltaMod = (finalError - firstError) - (finalInjection - firstInjection)
    print(chName+": "+str(finalInjection) + " - " + str(finalError) + " - " +str(delta) + " - " + str(deltaMod))
