#!/bin/bash

set +e #otherwise the script will exit on error
containsElement () {
  local e match="$1"
  shift
  for e; do [[ "$e" == "$match" ]] && return 0; done
  return 1
}

Clear_Screen(){
	clear
}

Get_Main_Class_From_APK(){
	ouput=$(aapt dump badging ../APK/$1.apk | grep "launchable-activity")
	array_output=(${ouput// / })
	Main_Class=$(echo ${array_output[1]} | sed s'/name=//' | sed s"/'//" | sed s"/'//")
	echo $Main_Class
}
Get_Package_From_APK(){
	ouput=$(aapt dump badging ../APK/$1.apk | grep "package")
	array_output=(${ouput// / })
	Main_Class=$(echo ${array_output[1]} | sed s'/name=//' | sed s"/'//" | sed s"/'//")
	echo $Main_Class
}
Compile_Framework(){
	javac -d Classes -cp "../Jar_Libs/*" *.java JavaHelper/* ClassHelper/*.java Conditions/*.java Constants/*.java FileHandler/*.java FileParser/*.java FileWriter/*.java Logging/*.java Soot/*.java Utils/*.java
}

Run_Framework(){
	APK_Location=../../APK/$1.apk
	Soot_output_Location=../sootOutput/$1/
	Main_Class=$(Get_Main_Class_From_APK $1)
	cd Classes && java -cp .:../../Jar_Libs/* SootAnalysis $APK_Location $Soot_output_Location $Main_Class 
	cd ../
}

Zip_And_Sign_APK_File(){
	zipalign -fv 4 sootOutput/$1/$1.apk sootOutput/$1/signed$1.apk
	apksigner sign --ks ../my-release-key.keystore --ks-pass pass:password sootOutput/$1/signed$1.apk
}

Install_APK(){
	adb install sootOutput/$1/signed$1.apk
	echo sucessfully installed $1.apk
}

Uninstall_APK(){
	package=$(Get_Package_From_APK $1)
	installed_packages=$(adb shell pm list packages)
	output=${installed_packages//package:/}
	# echo $output

	if [[ $output == *$package* ]]; then
	  adb uninstall $package
	  echo sucessfully uninstalled $1.apk
	fi
	# echo Package is: $package

}
Log_APK(){
	nohup adb logcat FiniteState:V *:S > ../ADB_Logcat_Logs/$1.txt &
}
Clear_Log(){
	adb logcat -c
}
Stop_Logging(){
	# sleep 30s
	pkill -f adb
}

Clear_Screen
rm -rf ../sootOutput/*

# APK_Names=(TestApp3 com.haken.qrcode_102_apksos.com)
# APK_Names=(com.haken.qrcode_102_apksos.com F4DA643B2B9A310FDC1CC7A3CBAEE83E106A0D654119FDDC608A4B587C5552A3)
APK_Names=(TestApp3)
# Compile_Framework
for APK_Name in "${APK_Names[@]}"
	do: 
	   Run_Framework $APK_Name
	   # Zip_And_Sign_APK_File $APK_Name
	done


# for Folder in $(ls sootOutput/)
# 	do : 
# 		Clear_Log
# 		Install_APK $Folder
# 		main_class=$(Get_Main_Class_From_APK $Folder)
# 		package=$(Get_Package_From_APK $Folder)
# 		echo $package
# 		echo $main_class

# 		device_name=7040018020065015
# 		cd ../Python
# 		pwd
# 		Log_APK $Folder
# 		python3 Appium_Gold.py $device_name $package $main_class $Folder
# 		cd ../Java
# 		pwd
# 		Uninstall_APK $Folder
# 	   	Stop_Logging
# 	done