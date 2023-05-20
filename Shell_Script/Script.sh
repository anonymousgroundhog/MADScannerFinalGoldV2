#!/bin/sh

clear
cd ../Java/
rm sootOutput/*
javac -d Classes -cp "../Jar_Libs/*" SootTest3.java SootInstrumentationHelper.java Once.java SootUtil.java ClassLiteralMethodSourceonAdClicked.java

# GET MAIN ACTIVITY FROM APK
main_activity=$(aapt dump badging ../APK/$1 | grep 'launchable-activity' | cut -d ' ' -f 2 | sed "s/name//g;s/=//g;s/'//g")
echo "Main_Activity:" $main_activity > APK_Details.txt
main_package=$(aapt dump badging ../APK/$1 | grep "package" | cut -d ' ' -f 2 | sed "s/name//g;s/=//g;s/'//g")
echo "Main_Class:" $main_package >> APK_Details.txt

cd Classes
java -cp ".:../../Jar_Libs/*" SootTest3 -allow-phantom-refs -android-jars "../../Android/platforms" -android-api-version 33 -src-prec apk -output-format J -force-overwrite -output-dir ../sootOutput -process-dir "../../APK/$1" -process-multiple-dex -w -p db.transformations enabled:true
# java -cp ".:../../Jar_Libs/*" SootTest3 -allow-phantom-refs -android-jars "../../Android/platforms" -android-api-version 33 -src-prec apk -output-format dex -force-overwrite -output-dir ../sootOutput -process-dir "../../APK/$1" -process-multiple-dex -w -p db.transformations enabled:true


# cd ../sootOutput
# rm signed*.apk
# apk_name=$(ls | grep *.apk | sed 's/\<apk\>//g' | sed 's/\.//g')
# echo $apk_name

# zipalign -fv 4 $apk_name.apk signed$apk_name.apk
# apksigner sign --ks ../../my-release-key.keystore --ks-pass pass:password signed$apk_name.apk
# rm *.idsig
# adb install signed$apk_name.apk
# adb logcat -c
# clear
# adb logcat FiniteState:V *:S