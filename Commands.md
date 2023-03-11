1. To invoke and execute the emulator:

~emulator -avd Pixel_api_33


1. To install application on the above running emulator

~~adb install APK/TestApp2.apk


1. To check running devices

~~adb devices


1. add android SDK path to /etc/paths

~~sudo vim /etc/paths

To check the path of /etc/paths > open file manager > shift+cmd+G and search for folder.

1. running Appium.py will perform testing actions.




# Git commands:

~git status

~git branch

~git switch

~git branch test     (this will create test branch)

~git status    (this will give you git status details like current branch)

~git push origin test

~git add .

~git commit -m "commit message"

~git push origin test

~git reset --hard HEAD^

~git pull origin test

~git remote -v      (this will give details about all the origins and current git remotes)

~git branch --delete test

~git branch -d test (to delete a branch we need to switch out of test branch)

~git switch stable

~git branch -D test 

~git branch test     (this will create test branch)

~git pull origin test (will pull )