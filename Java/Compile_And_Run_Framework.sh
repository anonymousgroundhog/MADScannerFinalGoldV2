#!/bin/bash

clear
parameter_APK_Name=$1
parameter_output_format=$2

APK_Location=../../APK/$1.apk
Soot_output_Location=../sootOutput/$parameter_APK_Name/

javac -d Classes -cp "../Jar_Libs/*" *.java ClassHelper/*.java Conditions/*.java Constants/*.java FileHandler/*.java FileParser/*.java FileWriter/*.java Logging/*.java Soot/*.java Utils/*.java

# cd Classes && java -cp .:../../Jar_Libs/* SootAnalysis  ../../APK/BannerExampleAdViewOnlyWithLog.apk J ../sootOutput/BannerExampleAdViewOnlyWithLog
cd Classes && java -cp .:../../Jar_Libs/* SootAnalysis  $APK_Location $parameter_output_format $Soot_output_Location