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
		# adb install-multiple $(ls signed*.apk)
		#Exit_Status=$(Function_Check_Command_Runs adb install $SignedFile)
		# adb install $SignedFile
	# 	device_name=$(Get_Device_Name)
	# 	package=$(Get_App_Package $SignedFile)
	# 	activity=$(Get_App_activity $SignedFile)
	# 	echo Package: $package Activity: $activity
	# 	RESULT=$?
	# 	if [ $RESULT -eq 0 ]; then
	# 		echo success
	# 		#clear
	# 		[ -d "../../../Python" ] && cd ../../../Python
	# 		python3 Appium_Test.py $device_name $package $activity
	# 		Uninstall_App $package
	# 	else
	# 		echo failed
	# 	fi
	# ##	adb logcat FiniteState:V *:S
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
	# for SignedFile in $(ls signed*.apk); do
	# 	File_Name_Only=$(echo $SignedFile | rev | cut -d "/" -f1 | rev | sed 's/\.apk//g' | sed s/"signed"//)
	# 	printf "\n\nFile name only is: $File_Name_Only\n"
	# 	cp $SignedFile .APK_Testing/$File_Name_Only.apk
	# 	printf "\nApp: $File_Name_Only\n"

	# 	if [ -d APK_Testing/$File_Name_Only ]; then
	# 		printf "\nIt exists\n"
	# 		for file in $(ls ../../APK/APK_Testing/$File_Name_Only/signed*.apk);do
	# 			printf "\t$file\n"
	# 			file_name_only=$(echo $file | rev | cut -d "/" -f1 | rev | sed s/"signed"//)
	# 			echo $file_name_only
	# 			if ! [ $file_name_only == $File_Name_Only.apk ]; then
	# 				echo cp2
	# 				cp $file ../APK/APK_Testing/$File_Name_Only
	# 			fi
	# 		done 

	# 	fi
	# 	cd ../
	# 	echo current_dir for Function_Test_APK_Files_1 is $(pwd)
	# 	if [ -d ../../APK/APK_Testing/$File_Name_Only ]; then
	# 		cd ../../APK/APK_Testing/$File_Name_Only
	# 		echo current_dir for Function_Test_APK_Files_2 $(pwd)
	# 		if [ -f split_config*.apk ]; then
	# 			adb install-multiple *.apk
	# 		else
	# 			adb install signed*.apk
	# 			device_name=$(Get_Device_Name)
	# 			package=$(Get_App_Package $File_Name_Only.apk)
	# 			activity=$(Get_App_activity $File_Name_Only.apk)
	# 			echo Package: $package Activity: $activity
	# 			cd ../../../Python
	# 			RESULT=$?
	# 			if [ $RESULT -eq 0 ]; then
	# 				echo success
	# 				# echo current_dir is $current_dir
	# 				#clear
	# 				[ -d "Python" ] && cd Python
	# 				python3 Appium_Test.py $device_name $package $activity
	# 				Uninstall_App $package
	# 			else
	# 				echo failed
	# 			fi
	# 		fi
	# 	else
	# 		printf "\n\nFile path is now F1: $(pwd)\n"
	# 		cd APK/APK_Testing/
	# 		printf "\n\n Curent directory is now F2: $(pwd)\n\n"
	# 		adb install signed$File_Name_Only.apk
	# 		device_name=$(Get_Device_Name)
	# 		package=$(Get_App_Package $File_Name_Only.apk)
	# 		activity=$(Get_App_activity $File_Name_Only.apk)
	# 		echo Package: $package Activity: $activity
	# 		cd ../../Python
	# 			RESULT=$?
	# 			if [ $RESULT -eq 0 ]; then
	# 				echo success
	# 				# echo current_dir is $current_dir
	# 				#clear
	# 				[ -d "Python" ] && cd Python
	# 				python3 Appium_Test.py $device_name $package $activity
	# 				Uninstall_App $package
	# 			else
	# 				echo failed
	# 			fi
	# 	fi
	# done

	
	# pwd
	# if [ -d ../../../APK/APK_Testing/$1 ]; then
	# 	for file in $(ls  ../../../APK/APK_Testing/$1/signed*.apk | grep -v signed$1.apk)
	# 	do
	# 		cp $file .
	# 	done
	# fi
	
# 	adb install-multiple $(ls signed*.apk)
# 	#Exit_Status=$(Function_Check_Command_Runs adb install $SignedFile)
# 	# adb install $SignedFile
# 	device_name=$(Get_Device_Name)
# 	package=$(Get_App_Package $SignedFile)
# 	activity=$(Get_App_activity $SignedFile)
# 	echo Package: $package Activity: $activity
# 	RESULT=$?
# 	if [ $RESULT -eq 0 ]; then
# 		echo success
# 		#clear
# 		[ -d "../../../Python" ] && cd ../../../Python
# 		python3 Appium_Test.py $device_name $package $activity
# 		Uninstall_App $package
# 	else
# 		echo failed
# 	fi
# ##	adb logcat FiniteState:V *:S
	pkill adb
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
rm ../Java/Classes/sootOutput/*
rm ../Java/APK_Files_Signed_And_Injected_Logs/*
rm -rf ../APK/APK_Testing/*
##################### PRE-SETUP #####################
Folder=Testing
echo Current directory is: $(pwd)
subdircount=$(find ../APK/$Folder/ -maxdepth 1 -type d | wc -l)
 
##################### SETUP: Sign and setup #####################
if [ subdircount -gt 1 ];
then
	for Folder in $(ls -d ../APK/$Folder/*/); do
		num_of_signed_files=$(ls $Folder | grep "signed" | wc -l) 
		rm $Folder/signed*.apk

		for File in $(ls $Folder); do
			if [[ ! $File == *"idsig"* ]]; then
			  # echo "It's there!"
				zipalign -fv 4 $Folder/$File $Folder/signed$File
				apksigner sign --ks ../my-release-key.keystore --ks-pass pass:password $Folder/signed$File
			fi

		done
		rm $Folder/*.idsig
	done

	for Folder in $(ls -d ../APK/APK_Testing/*/); do
			for File in $(ls $Folder/signed*.apk); do
				echo File path is: $File
				file=$(echo $File | rev | cut -d "/" -f1 | rev | sed 's/\.apk//g')
				echo File is: $file
				orig_file_name=$(echo $file | sed 's/signed//')
				exists=$(echo $Folder | grep $orig_file_name | wc -l)
				if [[ $exists > 0 ]]; then 
					echo "It's there"; 
					cp $File ../APK/APK_Testing
				fi
			done
	done
fi

##################### SETUP: Analysis #####################
Folder=Testing
# clear
echo Current directory is: $(pwd)
# for file in $(ls ../APK/$Folder/*.apk)
# do
# 	file_path=$(echo $file | rev | cut -d '/' -f 1 | rev | sed 's/.apk//')
# 	echo $file_path
# 	# echo file=$(echo $file | rev | cut -d '/' -f 1 | rev | cut -d. -f1)
# done

for file in $(ls ../APK/$Folder/*.apk)
do
	
	file=$(echo $file | rev | cut -d '/' -f 1 | rev | sed 's/.apk//')
	echo "File is currently:" $file
	FILE=../Data/AdListenerMethods.txt

	if test -f "$FILE"; then
	    printf "\n\n$FILE exists.\n"
		rm ../Data/AdListenerMethods.txt
	fi

	Option=$1
	adb logcat -c
	echo File is: $(echo $file)
	Function_Get_MainActivity_And_Write_To_File $file $Folder
	if [ $Option = J ] || [ $Option = j ]
	then
		echo "\nJimple chosen"
		Function_Run_Framework_And_Output_Jimple $file $Option $Folder
		# if [ $file == "TestClassAdViewAdListener_No_Listener_Call" ] 
		if [ $file == "TestClassAdViewAdListener_No_Listener_Call" ]
		then
			break
		fi
	elif [ $Option = apk ]
		then
		Function_Run_Framework_And_Zip_And_Sign_APK $file $Option $Folder

		# echo "Testing"
	else
		echo "No such option"
	fi
done







cd ../
current_dir=$(pwd)
cp Java/Classes/sootOutput/signed*.apk Java/APK_Files_Signed_And_Injected_Logs
printf "\n\tCopied Files from sootOutput folder!!!\n" 


cd Java/APK_Files_Signed_And_Injected_Logs
echo "DIR TEST: $(pwd)"
rm *.idsig
for File in $(ls signed*.apk); do
	echo File in APK_Files_Signed: $File
	file_name_only=$(echo $File | sed 's/signed//' | sed 's/.apk//')
	if [[ $file_name_only != *"signed"* ]];
	then
		printf "\n\n\tFile Name only is: $file_name_only\n\n"
		mv $File $file_name_only.apk
		# mkdir -p $file_name_only
		# cp $file_name_only*.apk $file_name_only/$file_name_only.apk
		# Copy to Testing director
		mkdir -p ../../APK/APK_Testing/$file_name_only
		cp $file_name_only.apk ../../APK/APK_Testing/$file_name_only/$file_name_only.apk
		if [[ -d ../../APK/Google_Play_Apps/$file_name_only && $(ls ../../APK/Google_Play_Apps/$file_name_only | wc -l) -gt 1 ]]; then
			echo "FOUND DIR: $file_name_only!!!"
			# mkdir -p $file_name_only
			# cp $File $file_name_only
			ls -1 ../../APK/Google_Play_Apps/$file_name_only/signed*.apk | grep -v '^'$file_name_only'.apk$' | grep -v '^signed'$file_name_only'.apk$' | xargs -I {} cp {} ../../APK/APK_Testing/$file_name_only
			rm ../../APK/APK_Testing/$file_name_only/signed$file_name_only.apk
		fi
	fi
done

cd ../../APK/APK_Testing/
for dir in $(ls -d */); do
		printf "\n\t Directory is $dir\n"
	for file in $(ls $dir); do
		printf "\n\t File is $file\n"
		if [[ $file != *"signed"* ]]; then
			zipalign -fv 4 $dir/$file $dir/signed$file
			apksigner sign --ks ../../my-release-key.keystore --ks-pass pass:password $dir/signed$file
		fi
	done
	rm $dir/*.idsig
	rm $dir/$file
done



# cd $present_dir
Function_Test_APK_Files
# pkill adb
 
# cd ../Python
python3 Generate_Model_From_Logs.py