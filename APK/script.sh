#!/bin/bash

Packages_List(){
	for package in $(adb shell pm list packages)
	do :
		echo $package | sed s'/package://'
	done
}

Get_APK_Details(){
	for apk in $(ls *.apk)
	do :
		echo $apk
	done
}

Pull_And_Uninstall_Based_On_Keyword()
{
	package_name=$(adb shell pm list packages | grep $1 | sed s'/package://')
	adb shell pm path $package_name
	if [ $(echo $package_name | wc -c) -gt 1 ];	then
		app_name=$(echo $package_name | rev | cut -d. -f1 | rev) 
		path=$(adb shell pm path $package_name | grep base | sed s'/package://')
		echo package: $package_name
		echo app name: $app_name
		adb pull $path $app_name.apk
		adb uninstall $package_name
	else
		echo "No app with name $1 was found!!!"
	fi
}
clear
# Packages_List
Pull_And_Uninstall_Based_On_Keyword $1
# Get_APK_Details