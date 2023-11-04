#!/bin/bash
Function_Failure()
{
    echo "$@" >&2
    exit 1
}

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
	mv *.apk ../APK/APK_Testing
	

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
	printf "\n\n"
	current_dir=$(pwd)
	[ -d "Classes" ] && cd Classes
	Folder=$3
	File=$1.apk
	File_Name_Only=$1
	Option=$2
	SignedFile=signed$File
	APKPath="../../APK/"$Folder/$File
	echo "APK path is: " $APKPath
	echo "Current directory is: " $(pwd)
	sdkbuild_version=$(aapt dump badging $APKPath | grep compileSdkVersion | cut -d ' ' -f 6 | tr -d "platformBuildVersionCode='")
	echo "SdkBuildVersion is: " $sdkbuild_version

	hash=$([ -e $APKPath ] && sha256sum $APKPath | cut -d " " -f1)
	echo Hash is: $hash

	# pwd
	# Function_Failure
	# java -cp ".:../../Jar_Libs/*" BAnalysisApp $File $hash $Option $Folder -android-api-version 33
	java -Xmx2g -XX:+ExitOnOutOfMemoryError -cp ".:../../Jar_Libs/*" BAnalysisApp $File $hash $Option $Folder -android-api-version 33
	
	[ -d "sootOutput" ] && cd sootOutput
	apk_name=$(ls | grep *.apk | sed 's/\<apk\>//g' | sed 's/\.//g')

	[ -f $File ] && zipalign -fv 4 $File $SignedFile
	echo PWD: $(pwd)
	if [ -f $SignedFile ]; then
		apksigner sign --ks ../../../my-release-key.keystore --ks-pass pass:password $SignedFile

		#clear
		rm *.idsig
		adb logcat -c
		pwd
		datetime=$(echo $(date "+%D-%T") | sed -r 's/[/]+/_/g')
		nohup adb logcat FiniteState:V *:S > ../../../Data/Logs/$datetime.txt &

		echo "File is currently " $1
		cd ../../../
		pwd
		if [ -d APK/APK_Testing/$1 ]; then
			for file in $(ls  APK/APK_Testing/$1/signed*.apk | grep -v signed$1.apk)
			do
				cp $file .
			done
		fi
		pkill adb
	fi
	# rm nohup.out
	cd $current_dir

}

Function_Test_APK_Files(){
	printf "\n\nINSIDE Function_Test_APK_Files\n"
	adb logcat -c
	current_dir=$(pwd)
	datetime=$(echo $(date "+%D-%T") | sed -r 's/[/]+/_/g')
	nohup adb logcat FiniteState:V *:S > ../../Data/Logs/$datetime.txt &
	printf "\n\n\n\tcurrent_dir for Function_Test_APK_Files is $(pwd)\n"
	for dir in $(ls -d */); do
		for file in $(ls $dir); do
			if [[ $file != *"config"* ]]; then
				printf "\n\t File is $file\n"
				device_name=$(Get_Device_Name)
				package=$(Get_App_Package $dir/$file)
				activity=$(Get_App_activity $dir/$file)
				echo Package: $package Activity: $activity
			fi
		done
		adb install-multiple $dir/*.apk
		[ -d "../../Python" ] && cd ../../Python
		python3 Appium_Test.py $device_name $package $activity
		Uninstall_App $package
		cd $current_dir
	done
	[ -d "../../Python" ] && cd ../../Python
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


cd ../Java/APK_Files_Signed_And_Injected_Logs/
pwd
for file in $(ls .); do
	if [[ $file == *"signed"* ]]; then
		file_name_only=$(echo $file | sed 's/signed//' | sed 's/.apk//')
		echo Moving $file $file_name_only
		mv $file $file_name_only.apk
		zipalign -fv 4 $file signed$file
		apksigner sign --ks ../../my-release-key.keystore --ks-pass pass:password signed$file
	fi
done

# for file in $(ls .); do
# 	printf "\n\t File is $file\n"
# 	zipalign -fv 4 $file signed$file
# 	apksigner sign --ks ../../my-release-key.keystore --ks-pass pass:password signed$file
# done

# for file in $(ls .); do
# 	if [[ $file != *"signed"* ]]; then
# 		rm $file
# 	fi
# done

# for file in $(ls .); do
# 	if [[ $file != *"signedsigned"* ]]; then
# 		file_name_only=$(echo $file | sed 's/signedsigned//' | sed 's/.apk//')
# 		mv $file $file_name_only.apk
# 	fi
# done
# rm *.idsig