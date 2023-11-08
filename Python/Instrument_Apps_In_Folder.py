import os, pandas as pd, sys, subprocess, shutil

# Android environment
from appium import webdriver
from appium.webdriver.common.touch_action import TouchAction
from xml.etree import ElementTree as ET
from appium import webdriver
from selenium.webdriver.common.by import By
from selenium.common.exceptions import NoSuchElementException
from ppadb.client import Client as AdbClient

def click_on_button_by_class_permission(driver, id):
        for elem in driver.find_elements(By.CLASS_NAME, id):
            if 'allow' in elem.text.lower():
                try:
                    print(elem)
                    elem.click()
                except:
                    print(''.join(["elem doesn't exist:",str(id)]))
                    continue


phone_name=subprocess.run(['adb', 'devices'], stdout=subprocess.PIPE)
phone_name=str(phone_name.stdout.decode('utf-8')).replace("\n","").replace("List of devices attached","").replace("device","")
print("Phone:" + phone_name)
os.chdir("../Java/APK_Files_Signed_And_Injected_Logs")


os.system("rm -rf *")

os.system("cp ../Classes/sootOutput/signed*.apk .")
# Copy over important files to specific directories (including helper files)
files=os.listdir('.')

print(files)
print("Dir is:"+str(os.getcwd()))
for file in files:
	this_dir=file.replace(".apk","")
	os.mkdir(this_dir)
	shutil.copyfile(file,''.join([this_dir, '/', file]), follow_symlinks=True)
	path_google_play = ''.join(["../../APK/Google_Play_Apps/",this_dir.replace('signed','')])
	if os.path.isdir(path_google_play):
		files= [entry for entry in os.listdir(path_google_play) if not file.replace("signed","") in entry]
		for f in files:
			path=''.join(["../../APK/Google_Play_Apps/",this_dir.replace('signed',''),'/',f])
			shutil.copy(path, this_dir)

		print(files)


os.system("rm *.apk")

# Start the analysis process (Appium_Test.py $device_name $package $activity)

entries = os.listdir('.')

# Filter out entries that are directories
directories = [entry for entry in entries if os.path.isdir(entry)]

for this_dir in directories:
	print(this_dir)
	app_name=''.join([this_dir, '/',this_dir,'.apk'])
	package_name=subprocess.run(['aapt', 'dump', 'badging', app_name ], stdout=subprocess.PIPE)
	package_name=package_name.stdout.decode('utf-8').split("\n")[0].split(" ")[1].replace("name=","").replace("'","")
	main_activity=subprocess.run(['aapt', 'dump', 'badging', app_name], stdout=subprocess.PIPE).stdout.decode('utf-8').split('\n')
	main_activity = [item for item in main_activity if "launchable-activity" in item]
	main_activity = main_activity[0].replace("launchable-activity: ","").split(" ")[0].replace("name=","").replace("'","")
	print("Packcage:"+str(package_name) + " Activity:" +str(main_activity))

	os.chdir(this_dir)
	os.system('adb install-multiple $(ls signed*.apk)')
	desired_capabilities = {
            "platformName": "Android",
            "deviceName": phone_name, #7040018020065015
            "appPackage": package_name,
            "noReset": True,
            "autoacceptalerts": True,
            "appium:wdaStartupRetries": 6,
            "autoGrantPermissions": True,
            "appActivity": main_activity,
            "adbExecTimeout": 30000
	}
	driver = webdriver.Remote("http://127.0.0.1:4723/wd/hub", desired_capabilities)
	source_xml = driver.page_source
	# print(source_xml)
	time.sleep(2)
	click_on_button_by_class_permission(driver,"android.widget.Button")
	os.chdir('../')