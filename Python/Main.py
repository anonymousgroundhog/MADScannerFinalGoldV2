import os, os.path, pandas as pd, json, shlex
import time, re, hashlib, subprocess
from datetime import datetime 
from Classes import Logcat, Android_App
from logcat_monitor.logcat_monitor import LogcatMonitor
from appium import webdriver
from ppadb.client import Client as AdbClient

def Run_System_Command(cmd):
    # subprocess.Popen(cmd, stdin=subprocess.PIPE, stdout=subprocess.PIPE,
    #                                stderr=subprocess.PIPE, shell=True).communicate()[0]
    cmd = subprocess.Popen(cmd, encoding='utf-8', stdin=subprocess.PIPE, stdout=subprocess.PIPE,
                                   stderr=subprocess.PIPE, shell=True)
    out, err = cmd.communicate()
    print(str(out))

def Run_System_Command_Nohup(cmd):
    os.system(cmd)


def Clear_Log():
    os.system('adb logcat -c')

def Log(app_name):
    cmd="".join(['nohup adb logcat FiniteState:V *:S > ../ADB_Logcat_Logs/',app_name,'.txt &'])
    Run_System_Command(cmd)
    # cmd="".join(['cat nohup.out >',app_name,'.txt'])
    # os.system(cmd)

def Log_And_Return_Dataframe(app_name, device_name):
    os.environ['PATH'] += os.pathsep + '/home/seansanders/Android/Sdk/platform-tools/'
    cmd="".join(['nohup adb logcat FiniteState:V *:S > ../ADB_Logcat_Logs/',app_name,'.txt &'])
    os.system(cmd)
    print("completed")
    Clear_Process_By_Name('adb')
    # desired_capabilities = {
    #         "platformName": "Android",
    #         "deviceName": "7040018020065015",
    #         # "appPackage": self.apk_info[1],
    #         "noReset": True,
    #         "autoacceptalerts": True,
    #         "appium:wdaStartupRetries": 4,
    #         "autoGrantPermissions": True
    #         # "appActivity": appActivity
    #     }
    # driver = webdriver.Remote("http://127.0.0.1:4723/wd/hub", desired_capabilities) 
    # log = driver.get_log('logcat')
    # logcat_string = json.dumps(log)
    # logcat_item = json.loads(logcat_string)
    # # keys = ['Dates', 'Times', 'App_Names', 'App_Hashes', 'Units', 'Methods']
    # # df = pd.DataFrame(columns=keys)
    # Dates = []
    # Times = []
    # AppNames = []
    # AppHashes = []
    # Units = []
    # MemoryLocations = []
    # # print(logcat_item)
    # for log in logcat_item:
    #     log_message = log['message']
    #     if log_message.__contains__('FiniteState'):
    #         lst_all_Data = []
    #         temp_data = log_message.split(' ')
    #         Dates.append(temp_data[0])
    #         Times.append(temp_data[1])
    #         lst_log_messages = log_message.split('---')
    #         MemoryLocations.append(lst_log_messages.pop())
    #         Units.append(lst_log_messages.pop())
    #         lst_log_messages.pop()
    #         AppHashes.append(lst_log_messages.pop())
    #         AppNames.append(str(lst_log_messages).split(' ').pop().replace(".apk']",''))
    #         print(lst_log_messages)
    # df = pd.DataFrame({'Dates' : Dates, 'Times' : Times, 'App_Names': AppNames, 'App_Hashes' : AppHashes, 'Units' : Units, 'Memory_Locations' : MemoryLocations})
    # # print(df[['App_Names', 'App_Hashes']])
    # print(df)

def Clear_Process_By_Name(name):
    cmd=' '.join(['pkill -f',name])
    Run_System_Command(cmd)

def Compile_Framework_Code():
    os.chdir('../Java')
    cmd = " ".join(['javac','-d','Classes','-cp', '"../Jar_Libs/*"', '*.java', 'ClassHelper/*.java', 
        'Conditions/*.java', 'Constants/*.java', 'FileHandler/*.java', 'FileParser/*.java', 'FileWriter/*.java', 'Logging/*.java', 'Soot/*.java', 'Utils/*.java'])
    Run_System_Command(cmd)
    print(cmd)
    os.chdir('../Python')

def Run_Framework_on_Single_APK(str_apkName, param_format):
    Soot_Output_Folder ="../sootOutput/"
    APK_Folder= "../../APK/"
    os.chdir('../Java/Classes')
    apk_output = ''.join([Soot_Output_Folder,str(str_apkName).replace(".apk","").replace("../","").replace("APK","")])
    # print(''.join(["APK_OUTPUT:",str(apk_output)]))
    # print(''.join(['current directory: ', os.getcwd()]))
    Run_System_Command(" ".join(['java -cp .:../../Jar_Libs/* SootAnalysis',"".join([" ../../APK/",str_apkName]),param_format,apk_output]))
    os.chdir('../../Python')

def Sign_APKS():
    Soot_Output_Folder ="../Java/sootOutput/"
    keystore_location = '../my-release-key.keystore'
    for directory in os.listdir(Soot_Output_Folder):
        for apk in os.listdir(''.join([Soot_Output_Folder,"/",directory])):
            if "signed" not in str(apk) and not '.jimple' in str(apk):
                print(''.join(['Signed ',apk,'!!!']))
                location = ''.join([Soot_Output_Folder, directory,'/',apk])
                location_signed = ''.join([Soot_Output_Folder, directory,"/signed",apk])
                print(''.join (['Found:',location_signed]))
                Run_System_Command(' '.join(['zipalign', '-f','-v', '4', location,location_signed]))
                Run_System_Command(' '.join(['apksigner','sign','--ks',keystore_location,'--ks-pass','pass:password',location_signed]))
                Run_System_Command(''.join(['rm ',''.join([Soot_Output_Folder,directory,'/*.idsig'])]))
                Run_System_Command(''.join(['rm ',location])) 
    # print(os.getcwd())
    if "Python" not in os.getcwd():
        os.chdir("../sootOutput")
        os.chdir("../../Python")

# def Run_Framework_on_APKS(param_format):
#     Soot_Output_Folder ="../sootOutput/"

#     os.chdir('../Java')
#     os.system(" ".join(['javac','-d','Classes','-cp', '"../Jar_Libs/*"', '*.java', 'ClassHelper/*.java', 'Conditions/*.java', 'Constants/*.java', 'FileHandler/*.java', 'FileParser/*.java', 'FileWriter/*.java', 'Logging/*.java', 'Soot/*.java', 'Utils/*.java']))

#     APK_Folder= "../../APK/"
#     os.chdir('Classes')
#     for apk in os.listdir(APK_Folder):
#         apk_output = ''.join([Soot_Output_Folder,str(apk).replace(".apk","").replace("../","").replace("APK","")])
#         print(''.join(["APK_OUTPUT:",str(apk_output)]))
#         os.system(" ".join(['java -cp .:../../Jar_Libs/* SootAnalysisV5',"".join([" ../../APK/",apk]),param_format,apk_output]))

#     Soot_Output_Folder ='../sootOutput'
#     keystore_location = '../../my-release-key.keystore'
#     for directory in os.listdir(Soot_Output_Folder):
#         for apk in os.listdir(''.join([Soot_Output_Folder,"/",directory])):
#           if "signed" not in str(apk) and not '.jimple' in str(apk):
#             location = ''.join([Soot_Output_Folder,"/",directory,'/',apk])
#             location_signed = ''.join([Soot_Output_Folder,"/",directory,"/signed",apk])
#             cmd = " ".join(['zipalign', '-f','-v', '4', location,location_signed])
#             cmd2 = " ".join(['apksigner','sign','--ks',keystore_location,'--ks-pass','pass:password',location_signed])
#             subprocess.call(cmd, shell=True)
#             subprocess.call(cmd2, shell=True)
#             os.system(''.join(['rm ',''.join([Soot_Output_Folder,"/",directory,'/*.idsig'])]))
#             os.system(''.join(['rm ',location]))
#     os.chdir("../sootOutput")
#     os.chdir("../../Python")

def Start_Emulator_In_Background(emulator_name, emulator_path):
    os.environ['PATH'] += os.pathsep + emulator_path
    command = ' '.join(['nohup emulator -avd', emulator_name, '&'])
    Run_System_Command_Nohup(command)

def Stop_Emulator_In_Background():
    # os.environ['PATH'] += os.pathsep + emulator_path
    cmd='pkill -f qemu-system-x86'
    Run_System_Command_Nohup(cmd)
    cmd='pkill -f emulator64-cras'
    Run_System_Command_Nohup(cmd)

def Install_App_On_Emulator(app_name_only, adb_path):
    print(os.getcwd())
    apk_path = ''.join(['../Java/sootOutput/',app_name_only,'/signed',app_name_only,'.apk'])
    print(apk_path)
    client = AdbClient(host="127.0.0.1", port=5037)
    devices = client.devices()
    for device in devices:
        device.install(apk_path)
    
#------------------------------------Running And Compiling Framework------------------------------------
os.system("clear")
# TO RUN MULTIPLE APKS UNCOMMENT BELOW
# for apk in os.listdir('../APK/'):
#     print(apk)
#     Run_Framework_on_Single_APK(apk,'dex')

Compile_Framework_Code()
# TO RUN SINGLE APK UNCOMMENT BELOW
Run_Framework_on_Single_APK('BannerRecyclerViewExample3.apk','J')

# TO SIGN APK UNCOMMENT BELOW
# Sign_APKS()


#TO RUN EMULATOR UNCOMMENT BELOW
# Start_Emulator_In_Background('Pixel_API_33', '/home/seansanders/Android/Sdk/emulator')
# time.sleep(5)
# Install_App_On_Emulator('BannerRecyclerViewExample', '/home/seansanders/Android/Sdk/platform-tools/adb')

# time.sleep(15)
# TO LOG UNCOMMENT BELOW
# Log_And_Return_Dataframe('Test', 'Pixel_API_33')

# TO STOP EMULATOR UNCOMMENT BELOW
# time.sleep(15)
# Stop_Emulator_In_Background()
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
# this_apk.Instrument_Interface(this_apk.app_name_only, 7040018020065015)
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