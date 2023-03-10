import os, time, subprocess
from appium import webdriver
from selenium.webdriver.common.by import By
from selenium.common.exceptions import NoSuchElementException
from ppadb.client import Client as AdbClient

def Run_System_Command(cmd):
    stdout = subprocess.run(cmd, check=True, capture_output=True, text=True).stdout
    print(stdout)

def Clear_Process_By_Name(name):
    cmd=' '.join(['pkill -f',name])
    os.system(cmd)

def Install_App_On_Emulator(app_name_only):
    print(os.getcwd())
    apk_path = ''.join(['../Java/sootOutput/',app_name_only,'/signed',app_name_only,'.apk'])
    print(apk_path)
    client = AdbClient(host="127.0.0.1", port=5037)
    devices = client.devices()
    for device in devices:
        device.install(apk_path)

def Uninstall_App_On_Emulator(app_package):
    client = AdbClient(host="127.0.0.1", port=5037)
    devices = client.devices()
    for device in devices:
        device.uninstall(app_package)

def click_on_button_by_class(driver, id):
    for elem in driver.find_elements(By.CLASS_NAME, id):
        if len(driver.find_elements(By.CLASS_NAME, id)) > 0:  
            try:
                print(elem)
                elem.click()
            except:
                print(''.join(["elem doesn't exist:",str(id)]))
                continue


def Run_Appium(app_name, device_name):
    os.environ['PATH'] = '/home/seansanders/Android/Sdk/platform-tools:' + os.environ['PATH']
    #os.environ['PATH'] += os.pathsep + '~/Android/Sdk/platform-tools/'
    os.system('adb devices')
    cmd="".join(['nohup adb logcat FiniteState:V *:S > ../ADB_Logcat_Logs/',app_name,'.txt &'])
    os.system('adb logcat -c')
    os.system(cmd)
    os.environ['PATH'] = '/home/seansanders/Android/Sdk/build-tools/33.0.2/:' + os.environ['PATH']
    cmd="".join(['aapt dump badging ../APK/',app_name,'.apk | grep package'])
    print(os.system(cmd))
    desired_capabilities = {
         "platformName": "Android",
         "deviceName": device_name,
         "appPackage": "com.google.android.gms.example.bannerexample",
         "noReset": True,
         "autoacceptalerts": True,
         "appium:wdaStartupRetries": 4,
         "autoGrantPermissions": True,
         "appActivity": "com.google.android.gms.example.bannerexample.MyActivity"
     }
    driver = webdriver.Remote("http://127.0.0.1:4723/wd/hub", desired_capabilities) 
    time.sleep(5)
    click_on_button_by_class(driver,"android.widget.TextView")

    print(driver);
    #Clear_Process_By_Name('adb')

#Uninstall_App_On_Emulator("com.google.android.gms.example.bannerexample")
#Install_App_On_Emulator("TestApp2")
Run_Appium("TestApp2", "7040018020065015")
Uninstall_App_On_Emulator("com.google.android.gms.example.bannerexample")
