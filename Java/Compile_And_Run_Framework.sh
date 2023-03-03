#!/bin/bash
echo "Hello"

javac -d Classes -cp "../Jar_Libs/*" *.java ClassHelper/*.java Conditions/*.java Constants/*.java FileHandler/*.java FileParser/*.java FileWriter/*.java Logging/*.java Soot/*.java Utils/*.java

cd Classes && java -cp .:../../Jar_Libs/* SootAnalysis  ../../APK/BannerExampleAdViewOnlyWithLog.apk J ../sootOutput/BannerExampleAdViewOnlyWithLog