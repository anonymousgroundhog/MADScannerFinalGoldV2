#!/bin/sh

clear
cd ../Java/
javac -d Classes -cp "../Jar_Libs/*" SootTest2.java
cd Classes
java -cp ".:../../Jar_Libs/*" SootTest2 -allow-phantom-refs -android-jars "../../Android/platforms" -android-api-version 33 -src-prec apk -output-format dex -force-overwrite -output-dir ../sootOutput -process-dir "../../APK/BannerOnly_Log_With_Class_AdView.apk" -process-multiple-dex -w -p db.transformations enabled:true
cd ../sootOutput

apk_name=$(ls | grep *.apk | sed 's/\<apk\>//g' | sed 's/\.//g')
echo $apk_name
rm signed*.apk
zipalign -fv 4 $apk_name.apk signed$apk_name.apk
apksigner sign --ks ../../my-release-key.keystore --ks-pass pass:password signed$apk_name.apk
rm *.idsig