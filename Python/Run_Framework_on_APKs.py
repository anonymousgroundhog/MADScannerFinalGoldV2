import time, re, os, pandas as pd, hashlib, subprocess 
from datetime import datetime

Main_Project_Directory = "../"
Classes_Folder = Main_Project_Directory+"/Java/Classes"
Soot_Output_Folder ="../sootOutput/"
Java_Folder = Main_Project_Directory+"/Java"

cmd = ['javac','-d','Classes','-cp', '"../Jar_Libs/*"', '*.java', 'ClassHelper/*.java', 'Conditions/*.java', 'Constants/*.java', 'FileHandler/*.java', 'FileParser/*.java', 'FileWriter/*.java', 'Logging/*.java', 'Soot/*.java', 'Utils/*.java']

os.chdir('../Java')
os.system(" ".join(cmd))

param_format = 'dex'
APK_Folder= "../../APK/"
apkfile=''
os.chdir('Classes')
for apk in os.listdir(APK_Folder):
    apk_output = [Soot_Output_Folder,str(apkfile).replace(".apk","").replace("/content/APK","")]
    cmd = ['java -cp .:../../Jar_Libs/* SootAnalysisV5',"".join([" ../../APK/",apk]),param_format,"".join(apk_output)]
    os.system(" ".join(cmd))

print(os.getcwd())
Soot_Output_Folder ='../sootOutput'
keystore_location = '../../my-release-key.keystore'
for folder in os.listdir(Soot_Output_Folder):
  if "signed" not in str(apk):
    location = Soot_Output_Folder+"/"+apk
    location_signed = Soot_Output_Folder+"/"+"signed"+apk
    print(location)
    print(location_signed)
    cmd = ['zipalign', '-f','-v', '4', location,location_signed]
    os.system(" ".join(cmd))
    cmd=['apksigner','sign','--ks',keystore_location,'--ks-pass','pass:password',location_signed]
    os.system(" ".join(cmd))

os.chdir("../sootOutput")
print(os.listdir())
os.system("rm *.idsig")
