#!/bin/bash

clear
parameter_APK_Name=$1
parameter_output_format=$2

APK_Location=../../APK/$1.apk
Soot_output_Location=../sootOutput/$parameter_APK_Name/

ouput=$(aapt dump badging ../APK/$1.apk | grep "launchable-activity")
# output_array=(echo $output | tr " " "\n")

array_output=(${ouput// / })
Main_Class=$(echo ${array_output[1]} | sed s'/name=//' | sed s"/'//" | sed s"/'//")

javac -d Classes -cp "../Jar_Libs/*" *.java JavaHelper/* ClassHelper/*.java Conditions/*.java Constants/*.java FileHandler/*.java FileParser/*.java FileWriter/*.java Logging/*.java Soot/*.java Utils/*.java
cd Classes && java -cp .:../../Jar_Libs/* SootAnalysis $APK_Location $Soot_output_Location $Main_Class

cd ../
pwd
zipalign -fv 4 sootOutput/$1/$1.apk sootOutput/$1/signed$1.apk
apksigner sign --ks ../my-release-key.keystore --ks-pass pass:password sootOutput/$1/signed$1.apk
