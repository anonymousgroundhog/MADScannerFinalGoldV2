import os, pandas as pd, json, shlex
import time, re, hashlib, subprocess
from datetime import datetime 
from Classes import Logcat, Android_App
from logcat_monitor.logcat_monitor import LogcatMonitor
from appium import webdriver

def Run_System_Command(cmd):
    os.system(cmd)

def Clear_Log():
    os.system('adb logcat -c')

def Log(app_name):
    cmd="".join(['nohup adb logcat FiniteState:V *:S > ../ADB_Logcat_Logs/',app_name,'.txt &'])
    Run_System_Command(cmd)
    cmd="".join(['cat nohup.out >',app_name,'.txt'])
    os.system(cmd)

def Log_And_Return_Dataframe(app_name):
    desired_capabilities = {
            "platformName": "Android",
            "deviceName": "7040018020065015",
            # "appPackage": self.apk_info[1],
            "noReset": True,
            "autoacceptalerts": True,
            "appium:wdaStartupRetries": 4,
            "autoGrantPermissions": True
            # "appActivity": appActivity
        }
    driver = webdriver.Remote("http://127.0.0.1:4723/wd/hub", desired_capabilities) 
    log = driver.get_log('logcat')
    logcat_string = json.dumps(log)
    logcat_item = json.loads(logcat_string)
    keys = ['Dates', 'Times', 'App_Names', 'App_Hashes', 'Units', 'Methods']
    df = pd.DataFrame(columns=keys)
    for log in logcat_item:
        log_message = log['message']
        if log_message.__contains__('FiniteState'):
            lst_data = log_message.split(" ", 7)
            app_specific_data = lst_data.pop().replace('FiniteState: ', '')
            lst_app_specific_data = app_specific_data.split('---')
            # print(lst_app_specific_data[3].split('(')[0].split(' ').pop())
            method = lst_app_specific_data[3].split('(')[0].split(' ').pop()
            row = {'Dates':lst_data[0], 'Times': lst_data[1], 'App_Names':lst_app_specific_data[0], 
                'App_Hashes': lst_app_specific_data[1], 'Units':lst_app_specific_data[3], 'Methods':method}
            # print(''.join([lst_data[0], ':', lst_data[1]]))
            # print(lst_app_specific_data)
            df = pd.concat([df, pd.DataFrame([row])])
    print(df[['Units','Methods']])
def Clear_Process_By_Name():
    cmd='pkill -f adb'
    os.system(cmd)

# def Run_Framework(param_format, apkfile, output_dir):
#     cmd = 'cd ../Java && javac -d Classes -cp "../Jar_Libs/*" *.java ClassHelper/*.java Conditions/*.java Constants/*.java FileHandler/*.java FileParser/*.java FileWriter/*.java Logging/*.java Soot/*.java Utils/*.java'
#     os.system(cmd)
#     APKPATH = ""
#     cmd = 'cd ../Java/Classes && java -cp ".:../../Jar_Libs/*" SootAnalysisV5 '+apkfile+' '+param_format+' '+output_dir
#     os.system(cmd) 

# def Return_Nth_Element_List(this_list, elem_num):
#     return ((this_list[elem_num:elem_num+1]+[elem_num])[0])

def Run_Framework_on_Single_APK(str_apkName, param_format):
    Soot_Output_Folder ="../sootOutput/"

    os.chdir('../Java')
    os.system(" ".join(['javac','-d','Classes','-cp', '"../Jar_Libs/*"', '*.java', 'ClassHelper/*.java', 'Conditions/*.java', 'Constants/*.java', 'FileHandler/*.java', 'FileParser/*.java', 'FileWriter/*.java', 'Logging/*.java', 'Soot/*.java', 'Utils/*.java']))
    print(" ".join(['COMPILING: ', 'javac','-d','Classes','-cp', '"../Jar_Libs/*"', '*.java', 'ClassHelper/*.java', 'Conditions/*.java', 'Constants/*.java', 'FileHandler/*.java', 'FileParser/*.java', 'FileWriter/*.java', 'Logging/*.java', 'Soot/*.java', 'Utils/*.java']))
    APK_Folder= "../../APK/"
    os.chdir('Classes')
    apk_output = ''.join([Soot_Output_Folder,str(str_apkName).replace(".apk","").replace("../","").replace("APK","")])
    print(''.join(["APK_OUTPUT:",str(apk_output)]))
    print(''.join(['current directory: ', os.getcwd()]))
    os.system(" ".join(['java -cp .:../../Jar_Libs/* SootAnalysisV5',"".join([" ../../APK/",str_apkName]),param_format,apk_output]))
    print(" ".join(['Running Framework: ','java -cp .:../../Jar_Libs/* SootAnalysisV5',"".join([" ../../APK/",str_apkName]),param_format,apk_output]))

    Soot_Output_Folder ='../sootOutput'
    keystore_location = '../../my-release-key.keystore'
    for directory in os.listdir(Soot_Output_Folder):
        for apk in os.listdir(''.join([Soot_Output_Folder,"/",directory])):
          if "signed" not in str(apk) and not '.jimple' in str(apk):
            location = ''.join([Soot_Output_Folder,"/",directory,'/',apk])
            location_signed = ''.join([Soot_Output_Folder,"/",directory,"/signed",apk])
            #cmd = ['zipalign', '-f','-v', '4', location,location_signed]
            os.system(" ".join(['zipalign', '-f','-v', '4', location,location_signed]))
            #cmd=['apksigner','sign','--ks',keystore_location,'--ks-pass','pass:password',location_signed]
            os.system(" ".join(['apksigner','sign','--ks',keystore_location,'--ks-pass','pass:password',location_signed]))
            os.system(''.join(['rm ',''.join([Soot_Output_Folder,"/",directory,'/*.idsig'])]))
            os.system(''.join(['rm ',location]))

    os.chdir("../sootOutput")
    os.chdir("../../Python")

def Run_Framework_on_APKS(param_format):
    Soot_Output_Folder ="../sootOutput/"

    os.chdir('../Java')
    os.system(" ".join(['javac','-d','Classes','-cp', '"../Jar_Libs/*"', '*.java', 'ClassHelper/*.java', 'Conditions/*.java', 'Constants/*.java', 'FileHandler/*.java', 'FileParser/*.java', 'FileWriter/*.java', 'Logging/*.java', 'Soot/*.java', 'Utils/*.java']))

    APK_Folder= "../../APK/"
    os.chdir('Classes')
    for apk in os.listdir(APK_Folder):
        apk_output = ''.join([Soot_Output_Folder,str(apk).replace(".apk","").replace("../","").replace("APK","")])
        print(''.join(["APK_OUTPUT:",str(apk_output)]))
        os.system(" ".join(['java -cp .:../../Jar_Libs/* SootAnalysisV5',"".join([" ../../APK/",apk]),param_format,apk_output]))

    Soot_Output_Folder ='../sootOutput'
    keystore_location = '../../my-release-key.keystore'
    for directory in os.listdir(Soot_Output_Folder):
        for apk in os.listdir(''.join([Soot_Output_Folder,"/",directory])):
          if "signed" not in str(apk) and not '.jimple' in str(apk):
            location = ''.join([Soot_Output_Folder,"/",directory,'/',apk])
            location_signed = ''.join([Soot_Output_Folder,"/",directory,"/signed",apk])
            #cmd = ['zipalign', '-f','-v', '4', location,location_signed]
            os.system(" ".join(['zipalign', '-f','-v', '4', location,location_signed]))
            #cmd=['apksigner','sign','--ks',keystore_location,'--ks-pass','pass:password',location_signed]
            os.system(" ".join(['apksigner','sign','--ks',keystore_location,'--ks-pass','pass:password',location_signed]))
            os.system(''.join(['rm ',''.join([Soot_Output_Folder,"/",directory,'/*.idsig'])]))
            os.system(''.join(['rm ',location]))
    os.chdir("../sootOutput")
    os.chdir("../../Python")

#------------------------------------Running And Compiling Framework------------------------------------
os.system("clear")
Run_Framework_on_Single_APK('BannerRecyclerViewExample.apk','J')
# Run_Framework_on_APKS('dex')
# Run_Framework_on_APKS('J')

# Log_And_Return_Dataframe('Test')
#------------------------------------INSTUMRENT------------------------------------


# dir_to_test = '../Java/sootOutput'
# apk_location = ''.join([dir_to_test,'/com.haken.qrcode_102_apksos.com/signedcom.haken.qrcode_102_apksos.com.apk'])
# print(apk_location)
# this_apk = Android_App(apk_location) 
# os.system("".join(['adb install ',apk_location]))
# Clear_Log()
# time.sleep(1)
# Log(this_apk.app_name_only)
# time.sleep(1)
# this_apk.Instrument_Interface(this_apk.app_name_only)
# Clear_Process_By_Name()
# this_apk.Uninstall_App()
# Run_System_Command("rm *.txt")

# USE THE BELOW CODE FOR INSTRUMENTING ALL APKS
#for directory in os.listdir(dir_to_test):
#    for apk in os.listdir(''.join([dir_to_test,"/",directory])):
#        if apk.__contains__("signed"):
#            apk_location = ''.join([dir_to_test,'/',directory,"/",apk])
#            print(apk_location)
#            this_apk = Android_App(apk_location) 
#            os.system("".join(['adb install ',apk_location]))
#            Clear_Log()
#            time.sleep(1)
#            Log(this_apk.app_name_only)
#            time.sleep(1)
#            try:
#                this_apk.Instrument_Interface(this_apk.app_name_only)
#            except:
#                print(''.join(['Error instrument:',this_apk.app_name_only]))
#            Clear_Process_By_Name()
#            this_apk.Uninstall_App()
#Run_System_Command("rm *.txt")


#------------------------------------LOGGING------------------------------------
#Logcat_Folder = "../ADB_Logcat_Logs/"
#this_logcat = Logcat(Logcat_Folder) 
#this_logcat.Run_Logcat_Analysis()
#this_logcat.Generate_Model_From_Dataframe()