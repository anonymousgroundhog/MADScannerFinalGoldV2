import os, pandas as pd, json
import time, re, hashlib, subprocess
from datetime import datetime 
from Classes import Logcat, Android_App

def Run_System_Command(cmd):
    os.system(cmd)

def Clear_Log():
   os.system('adb logcat -c')

def Log(app_name):
   cmd="".join(['nohup adb logcat FiniteState:V *:S > ../ADB_Logcat_Logs/',app_name,'.txt &'])
   Run_System_Command(cmd)
   cmd="".join(['cat nohup.out >',app_name,'.txt'])
   os.system(cmd)

def Clear_Process_By_Name():
   cmd='pkill -f adb'
   os.system(cmd)

def Run_Framework(param_format, apkfile, output_dir):
    cmd = 'cd ../Java && javac -d Classes -cp "../Jar_Libs/*" *.java ClassHelper/*.java Conditions/*.java Constants/*.java FileHandler/*.java FileParser/*.java FileWriter/*.java Logging/*.java Soot/*.java Utils/*.java'
    os.system(cmd)
    APKPATH = ""
    cmd = 'cd ../Java/Classes && java -cp ".:../../Jar_Libs/*" SootAnalysisV5 '+apkfile+' '+param_format+' '+output_dir
    os.system(cmd) 

def Return_Nth_Element_List(this_list, elem_num):
    return ((this_list[elem_num:elem_num+1]+[elem_num])[0])

def Run_Framework_on_APKS():
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
    #for folder in os.listdir(Soot_Output_Folder):
    for apk in os.listdir(Soot_Output_Folder):
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
    os.system("rm *.idsig")
    os.chdir("../../Python")

#------------------------------------Running And Compiling Framework------------------------------------
os.system("clear")
#Run_Framework_on_APKS()
#------------------------------------INSTUMRENT------------------------------------
os.system("clear")
dir_to_test = '../Java/sootOutput'
for apk in os.listdir(dir_to_test):
    if apk.__contains__("signed"):
        this_apk = Android_App(dir_to_test+"/"+apk) 
        os.system("".join(['adb install ../Java/sootOutput/',apk]))
        Clear_Log()
        Log(this_apk.app_name_only)
        time.sleep(1)
        this_apk.Instrument_Interface(this_apk.app_name_only)
        Clear_Process_By_Name()
        this_apk.Uninstall_App()
Run_System_Command("rm *.txt")

print(os.getcwd())

#------------------------------------LOGGING------------------------------------
Logcat_Folder = "../ADB_Logcat_Logs/"
this_logcat = Logcat(Logcat_Folder) 
this_logcat.Run_Logcat_Analysis()
print(this_logcat.dataframe)
