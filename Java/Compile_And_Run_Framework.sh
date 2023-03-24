#!/bin/bash
Clear_Screen(){
	clear
}

Get_Main_Class_From_APK(){
	ouput=$(aapt dump badging ../APK/$1.apk | grep "launchable-activity")
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

	# ouput=$(aapt dump badging ../APK/$1.apk | grep "launchable-activity")
	# array_output=(${ouput// / })
	# Main_Class=$(echo ${array_output[1]} | sed s'/name=//' | sed s"/'//" | sed s"/'//")
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

Log_APK(){
	nohup adb logcat FiniteState:V *:S > ../ADB_Logcat_Logs/$1.txt &
}
Clear_Log(){
	adb logcat -c
}
Stop_Logging(){
	sleep 30s
	pkill -f adb
}

# APK_Name=TestApp3
APK_Name=com.haken.qrcode_102_apksos.com
Clear_Screen
Compile_Framework
Run_Framework $APK_Name
pwd
Zip_And_Sign_APK_File $APK_Name

# Clear_Log
Install_APK $APK_Name
# Log_APK $APK_Name
# Stop_Logging