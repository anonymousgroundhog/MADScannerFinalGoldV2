#!/bin/sh

Function_Get_Packages_And_Add_To_File() {
	adb shell pm list packages>installed.txt
}

Function_Download_New_APK_Discovered() {
	adb shell pm list packages>installed2.txt
	#DIFF TWO FILES AND THEN DOWNLOAD THE ONES THAT SHOW UP
	results_diff=$(diff --changed-group-format='%<%>' --unchanged-group-format='' installed.txt installed2.txt | cut -d ':' -f2)
	for word in $results_diff
	do
		echo $word
		apk_path=$(adb shell pm path $word | grep base | cut -d ':' -f2)
		echo "$apk_path"
		adb pull $apk_path .
		apk_name=$(echo $word | tr -d '.')
		mv base.apk $apk_name.apk
	done
	mv *.apk ../APK/Google_Play_Apps
	

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
	echo "\n\n"
	current_dir=$(pwd)
	[ -d "Classes" ] && cd Classes
	Folder=$3
	File=$1.apk
	Option=$2
	SignedFile=signed$File
	APKPath="../../APK/"$Folder/$File
	echo "APK path is: " $APKPath
	echo "Current directory is: " $(pwd)
	sdkbuild_version=$(aapt dump badging $APKPath | grep compileSdkVersion | cut -d ' ' -f 6 | tr -d "platformBuildVersionCode='")
	echo "SdkBuildVersion is: " $sdkbuild_version

	hash=$([ -e $APKPath ] && sha256sum $APKPath | cut -d " " -f1)
	echo Hash is: $hash

	pwd
	java -cp ".:../../Jar_Libs/*" BAnalysisApp $File $hash $Option $Folder -android-api-version 33

	[ -d "sootOutput" ] && cd sootOutput
	apk_name=$(ls | grep *.apk | sed 's/\<apk\>//g' | sed 's/\.//g')

	zipalign -fv 4 $File $SignedFile
	pwd
	apksigner sign --ks ../../../my-release-key.keystore --ks-pass pass:password $SignedFile

	#clear
	rm *.idsig
	adb logcat -c

	echo "File is currently " $1
	# pwd
	if [ -d ../../../APK/Google_Play_Apps/$1 ]; then
		for file in $(ls  ../../../APK/Google_Play_Apps/$1/signed*.apk | grep -v signed$1.apk)
		do
			cp $file .
		done
	fi
	
	adb install-multiple $(ls signed*.apk)
	#Exit_Status=$(Function_Check_Command_Runs adb install $SignedFile)
	# adb install $SignedFile
	device_name=$(Get_Device_Name)
	package=$(Get_App_Package $SignedFile)
	activity=$(Get_App_activity $SignedFile)
	echo Package: $package Activity: $activity
	RESULT=$?
	if [ $RESULT -eq 0 ]; then
		echo success
		#clear
		[ -d "../../../Python" ] && cd ../../../Python
		python3 Appium_Test.py $device_name $package $activity
		Uninstall_App $package
	else
		echo failed
	fi
##	adb logcat FiniteState:V *:S
}

Function_Run_Framework_And_Output_Jimple() {
	echo "Running Function"
	
	[ -d "Classes" ] && cd Classes
	
	Folder=$3
	File=$1.apk
	Option=$2
	hash=$(sha256sum ../../APK/$Folder/$File | cut -d " " -f1)
	# java -cp ".:../../Jar_Libs/*" SootTest3 -allow-phantom-refs -android-jars "../../Android/platforms" -android-api-version 33 -src-prec apk -output-format J -force-overwrite -output-dir ../sootOutput -process-dir "../../APK/$1" -process-multiple-dex -w -p db.transformations enabled:true $hash
	# java -cp ".:../../Jar_Libs/*" SootExample -allow-phantom-refs -android-jars "../../Android/platforms" -android-api-version 33 -src-prec apk -output-format J -force-overwrite -output-dir ../sootOutput -process-dir "../../APK/$1" -process-multiple-dex -w -p db.transformations enabled:true $hash
	# java -cp ".:../../Jar_Libs/*" BAnalysisApp $1 -output-format J -force-overwrite $hash
	java -cp ".:../../Jar_Libs/*" BAnalysisApp $File $hash $Option $Folder -android-api-version 33
}

Function_Compile_Framework() {
	cd ../Java/
	rm -rf Classes/sootOutput
	javac -d Classes -cp "../Jar_Libs/*" MyTransform.java BAnalysisApp.java SootExample.java SootTest3.java SootInstrumentationHelper.java Once.java SootUtil.java ClassLiteralMethodSourceonInit.java
}

Function_Get_MainActivity_And_Write_To_File() {
	echo "Current direct is:"$(pwd)
	File=$1
	Folder=$2
	main_activity=$(aapt dump badging ../APK/$Folder/$File.apk | grep -m1 'launchable-activity' | cut -d ' ' -f 2 | sed "s/name//g;s/=//g;s/'//g")
	# echo $main_activity
	echo "Main_Activity:" $main_activity > APK_Details.txt
	# main_activity2=$(aapt dump badging ../APK/$1 | grep 'leanback-launchable-activity' | cut -d ' ' -f 2 | sed "s/name//g;s/=//g;s/'//g")
	# echo "Main_Activity2:" $main_activity2 >> APK_Details.txt
	main_package=$(aapt dump badging ../APK/$Folder/$File.apk | grep "package" | cut -d ' ' -f 2 | sed "s/name//g;s/=//g;s/'//g")
	echo "Main_Class:" $main_package >> APK_Details.txt
}
Get_Device_Name() {
	output=$(adb devices | awk 'NR>1 {print $1}')
	echo $output
}
Get_App_Package() {
	output=$(aapt dump badging $1 | grep -m1 'package' | cut -d ' ' -f 2 | sed "s/name//g;s/=//g;s/'//g")
	echo $output
}
Get_App_activity() {
	output=$(aapt dump badging $1 | grep -m1 'launchable-activity' | cut -d ' ' -f 2 | sed "s/name//g;s/=//g;s/'//g")
	echo $output
}
Uninstall_App(){
	package=$(adb shell pm list packages | grep -m1 $1 | sed "s/package://g")
	adb uninstall $package
}

clear

#Function_Get_Packages_And_Add_To_File
#Function_Download_New_APK_Discovered

Function_Compile_Framework
FILE=../Data/AdListenerMethods.txt
if test -f "$FILE"; then
    echo "$FILE exists."
	rm ../Data/AdListenerMethods.txt
fi

## GET MAIN ACTIVITY FROM APK

Option=$1
Folder=Google_Play_Apps
file=$2
APKPath="../../"$Folder"/"$file".apk"
adb logcat -c
echo File is: $file
Function_Get_MainActivity_And_Write_To_File $file $Folder

if [ $Option = J ] || [ $Option = j ]
then
	echo "\nJimple chosen"
	Function_Run_Framework_And_Output_Jimple $file $Option $Folder
elif [ $Option = dex ] || [ $Option = DEX ] || [ $Option = d ] || [ $Option = D ]
then
	echo "dex chosen"
	Function_Run_Framework_And_Output_Jimple $file $Option
elif [ $Option = apk ]
	then
	Function_Run_Framework_And_Zip_And_Sign_APK $file $Option $Folder
	# datetime=$(date "+%D-%T")
	datetime=$(echo $(date "+%D-%T") | sed -r 's/[/]+/_/g')
	adb logcat FiniteState:V *:S -d 5 > ../Data/Logs/$datetime.txt
else
	echo "No such option"
fi

#cd ../Shell_Script
#Function_Error_Log_To_File
#adb logcat FiniteState:V *:S
