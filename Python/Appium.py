import os, time
from appium import webdriver
from selenium.webdriver.common.by import By
from selenium.common.exceptions import NoSuchElementException
from ppadb.client import Client as AdbClient

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
    desired_capabilities = {
         "platformName": "Android",
         "deviceName": "emulator-5554",
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

Run_Appium("test", "Test")
