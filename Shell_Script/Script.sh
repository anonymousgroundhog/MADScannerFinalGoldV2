#!/bin/bash
Function_Failure()
{
    echo "$@" >&2
    exit 1
}
Function_Error_Log_To_File() {
	$(adb logcat --buffer=crash > error.txt)
}

Function_Check_Command_Runs() {
	"$@"
	local exit_status=$?
	if [ $exit_status -eq 0 ]; then
		echo "Command ran successfully"
		return 1
	else
		echo "Command encountered an error"
		return 0
	fi
}

Function_Run_Framework_And_Zip_And_Sign_APK() {
	# echo "\n\n"
	current_dir=$(pwd)
	# ls
	[ -d "Classes" ] && cd Classes
	Folder=$3
	# File=$1
	File=ParentingGuidefromLasting2.0.2Apkpure.apk
	Option=$2
	SignedFile=signed$File
	APKPath=../$Folder/$File

	hash=$([ -e $APKPath ] && sha256sum $APKPath | cut -d " " -f1)
	echo Hash is: $hash

	java -ea -cp ".:../../Jar_Libs/*" BAnalysisApp $File $hash $Option $Folder > java_code_output.txt || Function_Failure "Failed to Run"

# 	[ -d "sootOutput" ] && cd sootOutput
# 	apk_name=$(ls | grep *.apk | sed 's/\<apk\>//g' | sed 's/\.//g')

# 	zipalign -fv 4 $File $SignedFile
# 	apksigner sign --ks ../../../my-release-key.keystore --ks-pass pass:password $SignedFile

# 	#clear
# 	rm *.idsig
# 	#adb logcat -c
# 	Exit_Status=$(Function_Check_Command_Runs adb install $SignedFile)
# 	echo "\nExit status is:" $Exit_Status
# 	#clear
# 	[ -d "../../../Python" ] && cd ../../../Python
# 	device_name=$(Get_Device_Name)
# 	package=$(Get_App_Package ../Java/Classes/sootOutput/$SignedFile)
# 	activity=$(Get_App_activity ../Java/Classes/sootOutput/$SignedFile)
# 	echo Package: $package Activity: $activity
# 	python3 Appium_Gold.py $device_name $package $activity
# 	Uninstall_App $package
# #	adb logcat FiniteState:V *:S
	cd $current_dir
}

Function_Run_Framework_And_Output_Jimple() {
	echo "Running Function"
	
	[ -d "Classes" ] && cd Classes
	
	Folder=$3
	File=$1
	Option=$2
	hash=$(sha256sum ../../APK/$Folder/$File | cut -d " " -f1)
	# java -cp ".:../../Jar_Libs/*" SootTest3 -allow-phantom-refs -android-jars "../../Android/platforms" -android-api-version 33 -src-prec apk -output-format J -force-overwrite -output-dir ../sootOutput -process-dir "../../APK/$1" -process-multiple-dex -w -p db.transformations enabled:true $hash
	# java -cp ".:../../Jar_Libs/*" SootExample -allow-phantom-refs -android-jars "../../Android/platforms" -android-api-version 33 -src-prec apk -output-format J -force-overwrite -output-dir ../sootOutput -process-dir "../../APK/$1" -process-multiple-dex -w -p db.transformations enabled:true $hash
	# java -cp ".:../../Jar_Libs/*" BAnalysisApp $1 -output-format J -force-overwrite $hash
	java -cp ".:../../Jar_Libs/*" BAnalysisApp $File $hash $Option
}

Function_Compile_Framework() {
	cd ../Java/
	rm -rf Classes/sootOutput
	javac -d Classes -cp "../Jar_Libs/*" MyTransform.java BAnalysisApp.java SootExample.java SootTest3.java SootInstrumentationHelper.java Once.java SootUtil.java ClassLiteralMethodSourceonInit.java
}

Function_Get_MainActivity_And_Write_To_File() {
	# File=$1
	# Folder=$2
	Path=$1
	echo "Path is: "$Path
	main_activity=$(aapt dump badging $Path | grep -m1 'launchable-activity' | cut -d ' ' -f 2 | sed "s/name//g;s/=//g;s/'//g")
	# echo $main_activity
	echo "Main_Activity:" $main_activity > APK_Details.txt
	# main_activity2=$(aapt dump badging ../APK/$1 | grep 'leanback-launchable-activity' | cut -d ' ' -f 2 | sed "s/name//g;s/=//g;s/'//g")
	# echo "Main_Activity2:" $main_activity2 >> APK_Details.txt
	main_package=$(aapt dump badging $Path | grep "package" | cut -d ' ' -f 2 | sed "s/name//g;s/=//g;s/'//g")
	echo "Main_Class:" $main_package >> APK_Details.txt
}
Get_Device_Name() {
	output=$(adb devices | awk 'NR>1 {print $1}')
	echo $output
}
Get_App_Package() {
	output=$(aapt dump badging ../$1 | grep -m1 'package' | cut -d ' ' -f 2 | sed "s/name//g;s/=//g;s/'//g")
	echo $output
}
Get_App_activity() {
	output=$(aapt dump badging ../$1 | grep -m1 'launchable-activity' | cut -d ' ' -f 2 | sed "s/name//g;s/=//g;s/'//g")
	echo $output
}
Uninstall_App(){
	package=$(adb shell pm list packages | grep -m1 $1 | sed "s/package://g")
	adb uninstall $package
}

clear
# Function_Compile_Framework

# GET MAIN ACTIVITY FROM APK

Folder=Google_Play_Apps
for File in $(ls ../APK/$Folder/*.apk)
do
	File_Name=$(echo $File | rev | cut -d '/' -f 1 | rev | sed 's/\./_/g')
	Full_Path=$File/$File_Name
	echo $File_Name
	./ScriptOnce.sh apk $File_Name
done