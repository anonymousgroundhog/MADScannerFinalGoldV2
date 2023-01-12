import os, pandas as pd, json
import time, re,  hashlib, subprocess
from datetime import datetime 
from appium import webdriver
from selenium.webdriver.common.by import By
from selenium.common.exceptions import NoSuchElementException

Logcat_Folder = "../ADB_Logcat_Logs/"
class Logcat:
    def __init__(self, strdir):
        self.dataframe = None
        self.directory_location = strdir

    def __str__(self):
        return f"\ndataframe:{self.dataframe}"

    def Return_Nth_Element_List(self, this_list, elem_num):
        return ((this_list[elem_num:elem_num+1]+[elem_num])[0])

    def Determine_State(self, transition_1, transition_2):
        statesdict={
        'appstart':'the app has started',
        'appstartnoads':'the app has started with no ads displayed',
        'adviewset':'the app has started and an adview was set',
        'adregistered':'the app is running and the advertisement is registered',
        'adloaded':'the app is running and the advertisement is loaded',
        'addisplayed':'the app is running and the advertisement is displayed',
        'adimpression':'the app is running and the advertisement impression is made',
        }
        transition = str(transition_1)+"-"+str(transition_2) 
        if transition == "onCreate-onCreate":
            return statesdict['appstart']
            #return("The app has started")
        if transition == "onCreate-findViewById":
            return statesdict['appstartnoads']
            #return("The app has started with no Ads Displayed")
        if transition == "findViewById-findViewById":
            return statesdict['appstartnoads']
            #return("The app has started with no Ads Displayed")
        if transition == "findViewById-setContentView":
            return statesdict['adviewset']
            #return("The app has started and an adView was set")
        if transition == "setContentView-setContentView":
            return statesdict['adviewset']
            #return("The app has started and an adView was set")
        if transition == "setContentView-MobileAds.initialize":
            return statesdict['adregistered']
            #return("The app is running and the advertisement is registered")
        if transition == "initialize-initialize":
            return statesdict['adregistered']
            #return("The app is running and the advertisement is registered")
        if transition == "initialize-loadAd":
            return statesdict['adloaded']
            #return("The app is running and the advertisement is loaded")
        if transition == "loadAd-loadAd":
            return statesdict['adloaded']
            #return("The app is running and the advertisement is loaded")
        if transition == "loadAd-showAd":
            return statesdict['addisplayed']
            #return("The app is running and the advertisement is displayed")
        if transition == "loadAd-destroy":
            return statesdict['adviewset']
            #return("The app has started with no Ads displayed")
        if transition == "showAd-showAd":
            return statesdict['adloaded']
            #return("The app is running and the advertisement is displayed")
        if transition == "showAd-destroy":
            return statesdict['appstartnoads']
            #return("loadAdThe app has started with no Ads displayed")
        if transition == "showAd-onClick":
            return statesdict['addisplayed']
            #return("The app is running and the advertisement impression is made")


    def Run_Logcat_Analysis(self):
        dates = []
        apps = []
        hashes = []
        methods = []
        units = []
        memory_locations = []
        for log in os.listdir(self.directory_location):
            file = open(self.directory_location+'/'+log, 'r')
            Lines = file.readlines()
            count = 0
            for line in Lines:
                count += 1
                line_formatted = line.strip().split("FiniteState:")
                date_time_stamp = self.Return_Nth_Element_List(line_formatted,0).split(" ")
                date_time_stamp = date_time_stamp[0] + " " + date_time_stamp[1]

                if '----' not in date_time_stamp:
                    line_details_method_specific = str(line_formatted[1::1]).replace("[","").replace("]","").replace("'","").replace("  ","")
                    hashes.append(line_details_method_specific.split("::")[1])
                    method = line_details_method_specific.split("::")
                    method = self.Return_Nth_Element_List(method,2)
                    if str(method).__contains__("initialize"):
                        method = method.split(':')
                        method = method[0]
                    unit = line_details_method_specific.split("::")
                    if len(unit) < 4:
                        unit = unit[2]
                        unit = unit.replace("initialize:","")
                    else:
                        unit = unit[3]
                    unit =unit.split("---")
                    unit = unit[0]
                    mem = line_details_method_specific.split("---")
                    mem = mem.pop()
                    app_name = self.Return_Nth_Element_List(line_details_method_specific.split("::"),0).replace(".apk","") 

                    dates.append(date_time_stamp)
                    apps.append(app_name.replace(" ", ""))
                    methods.append(method)
                    units.append(unit)
                    memory_locations.append(str(mem).replace("Memory Location of","").replace("is","="))
        self.dataframe = pd.DataFrame({'dates' : dates, 'apps' : apps, 'hashes': hashes, 'methods' : methods, 'units' :  units, 'memory_locations' : memory_locations})

class Android_App:
    def __init__(self, apk_location):
        self.apk_loc = apk_location
        self.app_name_only = apk_location.replace(".apk", "").split("/").pop()
        self.hash_value = self.Calculate_Hash_of_File(apk_location)
        self.apk_info = self.Get_APK_Info(apk_location)
        print(self.apk_info)
        self.desired_capabilities = {
            "platformName": "Android",
            "deviceName": "7040018020065015",
            "appPackage": self.apk_info[1] ,
            "noReset": True,
            "autoacceptalerts": True,
            "appium:wdaStartupRetries": 4,
            "autoGrantPermissions": True,
            "appActivity": self.apk_info[0]
        }
        self.dataframe = None
        self.driver = None

    def __str__(self):
        return f"App Name:{self.app_name_only}\ndesired_capabilities:{self.desired_capabilities}\nFile_Hash:{self.hash_value}"

    def Run_System_Command(self,cmd):
        stdout = subprocess.run(cmd, check=True, capture_output=True, text=True).stdout
        print(stdout)

    def Set_APK_Loc(self, apk_location):
        self.apk_loc = apk_location

    def Calculate_Hash_of_File(self, filename):
        return hashlib.sha256(open(filename,'rb').read()).hexdigest() 

    def Get_APK_Info(self, apkfile):
        thing_to_return = []
        cmd='aapt dump badging '+apkfile+' | grep launchable-activity'
        result = str(os.popen(cmd).read()).replace("launchable-activity","")
        for item in result.split(" "):
            if "name=" in item:
                thing_to_return.append(item.replace("name='","").replace("'",""))

        cmd='aapt dump badging '+apkfile+' | grep package'
        result = str(os.popen(cmd).read()).replace("package","")
        for item in result.split(" "):
            if "name=" in item:
                thing_to_return.append(item.replace("name='","").replace("'",""))
        return thing_to_return

    def Uninstall_App(self):
        os.system("adb uninstall "+self.apk_info[1])

    def check_exists_by_id(self, driver,id):
        if (len(driver.find_elements(By.ID, id)) > 0):
            return True

        return False

    def check_if_button_is_displayed(self, id):
        element = self.driver.find_element(By.XPATH, id)
        if element.is_displayed():
            return True
        return False

    def click_on_button_by_class_permission(self, id):
        for elem in self.driver.find_elements(By.CLASS_NAME, id):
            if 'allow' in elem.text.lower():
                elem.click()

    def click_on_button_by_class(self, id):
        for elem in self.driver.find_elements(By.CLASS_NAME, id):
            if len(self.driver.find_elements(By.CLASS_NAME, id)) > 0:
                print(elem)
                elem.click()

    def click_on_button_by_id(self, id):
        self.driver.find_element(By.ID, id).click()

    def click_on_specific_button_by_xPath(self, id):
        if len(self.driver.find_elements(By.XPATH, id)) > 0:
            self.driver.find_element(By.XPATH, id).click()

    def click_on_button_by_xPath(self, id):
        if len(self.driver.find_elements(By.XPATH, id)) > 0:
            for elem in self.driver.find_elementsBy.XPATH, id:
                print(elem)
                elem.click()
                break

    def set_driver(self):
        self.dataframe = pd.DataFrame(columns = ['AppName', 'Interface', 'ID', "Clicked"]) 
        self.driver = webdriver.Remote("http://127.0.0.1:4723/wd/hub", self.desired_capabilities) 

    def Take_Screenshot_Phone(self, filename):
        time_date_now = str(datetime.now())
        time_date_now = time_date_now.replace(" ","--").replace(".","-").replace(":","-")
        self.Run_System_Command('adb exec-out screencap -p > "../Java/Classes/sootOutput/"'+filename+'---'+time_date_now+'.png')

    def Instrument_Interface(self, app_name):
        this_apk.set_driver()
        time.sleep(3)
        source_xml = self.driver.page_source
#        file = open("current_app.xml", "w")
#        file.write(source_xml)
#        file.close()
        self.click_on_button_by_class_permission("android.widget.Button")
        time.sleep(2)
        time.sleep(2)
        self.click_on_button_by_class_permission("android.widget.Button")
        time.sleep(2)
        source_xml = self.driver.page_source
        #--------------------------------------Clicking Events Start HERE--------------------------------------
        time.sleep(2)
        self.click_on_button_by_class("android.widget.LinearLayout")
        source_xml = self.driver.page_source
        self.click_on_button_by_class("android.widget.Button")
#        source_xml = self.driver.page_source
#        self.click_on_button_by_class("android.view.View")

    def Zip_Sign_And_Install_APK(self):
        directory = os.getcwd()
        print("DIRECTORY:"+directory)
        self.Run_System_Command('zipalign -f -v 4 '+self.apk_loc+' signed'+self.app_name_only+'.apk')
        self.Run_System_Command('apksigner sign --ks ../my-release-key.keystore --ks-pass pass:password signed'+self.app_name_only+'.apk')
        self.Run_System_Command('mv *.apk ../Java/Classes/sootOutput/'+self.app_name_only)
        self.Run_System_Command('adb install ../Java/Classes/sootOutput/'+self.app_name_only+'/signed'+self.app_name_only+'.apk')

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

def Google_Drive_Get_Content():
    print("Test")

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
Run_Framework_on_APKS()
#------------------------------------INSTUMRENT------------------------------------
os.system("clear")
Google_Drive_Get_Content()
dir_to_test = '../Java/sootOutput'
print(os.listdir(dir_to_test))
for apk in os.listdir(dir_to_test):
    if apk.__contains__("signed"):
        this_apk = Android_App(dir_to_test+"/"+apk) 
        print("this:"+str(apk))
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
this_logcat = Logcat(Logcat_Folder) 
this_logcat.Run_Logcat_Analysis()
print(this_logcat.dataframe)
