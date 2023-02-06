import os, pandas as pd, json, polars as pl, gc
import time, re, hashlib, subprocess
from appium import webdriver
from selenium.webdriver.common.by import By
from selenium.common.exceptions import NoSuchElementException

class Android_App:
    def __init__(self, apk_location):
        self.apk_loc = apk_location
        self.app_name_only = apk_location.replace(".apk", "").split("/").pop()
        self.hash_value = self.Calculate_Hash_of_File(apk_location)
        self.apk_info = self.Get_APK_Info(apk_location)
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
                try:
                    print(elem)
                    elem.click()
                except:
                    print(''.join(["elem doesn't exist:",str(id)]))
                    continue

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
        self.set_driver()
        time.sleep(3)
        source_xml = self.driver.page_source
#        file = open("current_app.xml", "w")
#        file.write(source_xml)
#        file.close()
        self.click_on_button_by_class_permission("android.widget.Button")
        source_xml = self.driver.page_source
        time.sleep(2)
        time.sleep(2)
        self.click_on_button_by_class_permission("android.widget.Button")
        time.sleep(2)
        source_xml = self.driver.page_source
        #--------------------------------------Clicking Events Start HERE--------------------------------------
        self.click_on_button_by_class("android.widget.LinearLayout")
        source_xml = self.driver.page_source
        #self.click_on_button_by_class("android.widget.Button")
        self.driver.swipe(150, 800, 250, 200, 1000)
        #time.sleep(2)
#        self.driver.back()
#        source_xml = self.driver.page_source
        self.click_on_button_by_class("android.widget.TextView")
#        self.click_on_button_by_class("android.view.View")
        #driver.press_keycode(4)

        time.sleep(2)

    def Zip_Sign_And_Install_APK(self):
        directory = os.getcwd()
        print(''.join(["DIRECTORY:",directory]))
        self.Run_System_Command(''.join(['zipalign -f -v 4 ',self.apk_loc,' signed',self.app_name_only,'.apk']))
        self.Run_System_Command(''.join(['apksigner sign --ks ../my-release-key.keystore --ks-pass pass:password signed',self.app_name_only,'.apk']))
        self.Run_System_Command(''.join(['mv *.apk ../Java/Classes/sootOutput/',self.app_name_only]))
        self.Run_System_Command(''.join(['adb install ../Java/Classes/sootOutput/',self.app_name_only,'/signed',self.app_name_only,'.apk']))

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
                date_time_stamp = ''.join([date_time_stamp[0]," ", date_time_stamp[1]])

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
        del(dates, apps, hashes, methods, units, memory_locations)
        gc.collect()

    def Sliding_Window(self,arr, window_size):
        result = []
        for i in range(len(arr) - window_size + 1):
            result.append(arr[i:i+window_size])
        return result

    def Generate_Model_From_Dataframe(self):
        #print(self.dataframe)
        items = []
        for unit in self.dataframe['units']:
            id = unit.split('>').pop().replace('(','').replace(')','')
            #if id.__contains__("$") or id.__contains__("r") or id.__contains__("()") or id.__contains__("i"):
            if id.isnumeric():
                items.append(id)
            else:
                items.append('null')
        self.dataframe['ids'] = items 
        #print(self.dataframe)
        
        unique_apps = self.dataframe['apps'].unique()
        unique_apps_choice = 1
        print(unique_apps[unique_apps_choice])
        filtered_dataframe = self.dataframe[self.dataframe['apps'] == unique_apps[unique_apps_choice]]
        for index,row in filtered_dataframe.iterrows():
            for item in row['units'].split(':'): 
                if item.__contains__('('):
                    print(''.join(['Testing Method Extraction:',str(item.split('(')[0]).replace('void ','').replace('android.view.View ','')]))
            print('date:',row['dates'],' unit:',row['units'],' memory_locations:',row['memory_locations'],'ID:', row['ids'])
