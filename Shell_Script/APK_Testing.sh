#!/bin/bash

Function_Get_MainActivity_And_Return_Data() {
	echo "Current direct is:"$(pwd)
	File=$1
	Folder=$2
	main_activity=$(aapt dump badging ../APK/Google_Play_Apps/$Folder/$File.apk | grep -m1 'launchable-activity' | cut -d ' ' -f 2 | sed "s/name//g;s/=//g;s/'//g")
	main_package=$(aapt dump badging ../APK/Google_Play_Apps/$Folder/$File.apk | grep "package" | cut -d ' ' -f 2 | sed "s/name//g;s/=//g;s/'//g")
}
Get_Device_Name() {
	output=$(adb devices | awk 'NR>1 {print $1}')
	echo $output
}

Function_Get_MainActivity_And_Return_Data BannerRecyclerViewExample BannerRecyclerViewExample

echo $main_package
echo $main_activity
cd ../Python/
device_name=$(Get_Device_Name)
echo $device_name

#Begin Testing
python3 Appium_Test.py $device_name $main_package $main_activity