import os, time, shutil, subprocess
from termcolor import colored, cprint

class Apps_Download:
    
    def __init__(self):
        self.list_of_apps_installed = [];
        self.unique_apps = [];
    
    def create_directory_if_not_exists(self, directory_path):
        if not os.path.exists(directory_path):
            os.makedirs(directory_path)
            print(f"Directory created: {directory_path}")
        else:
            print(f"Directory already exists: {directory_path}")

    def Set_Installed_Apps(self, apps):
        self.list_of_apps_installed = apps

    def See_Installed_Apps(self):
        print("Apps Installed are:",self.list_of_apps_installed)
    
    def Print_List_Installed_App_Packages(self):
        output=os.popen('adb shell pm list packages').read()
        output = str(output).replace("package:","").split("\n")
        output.pop()
        # output = output[1].replace("package:", "")
        print(output)
    def List_Installed_App_Packages(self):
        output=os.popen('adb shell pm list packages').read()
        output = str(output).replace("package:","").split("\n")
        output.pop()
        # output = output[1].replace("package:", "")
        return(output)

    def Download_APK_To_File_System(self, package, pwd):
        print("Current Dir:"+ str(os.getcwd()))
        output=os.popen(' '.join(['adb shell pm path',package])).read()
        output = str(output).replace("package:","").split("\n")
        path_to_download_to=''.join(['../APK/Google_Play_Apps/',package,'/'])
        if not os.path.exists(path_to_download_to) and os.getcwd().__contains__(pwd):
            os.mkdir(path_to_download_to)
        
        for path in output:
            print(path)
            if os.path.exists(path_to_download_to):
                print("Path Exists for: " + path_to_download_to)
                os.popen(' '.join(['adb pull',path,path_to_download_to]))
            else:
                print("No path for: " + path_to_download_to)

    def Return_App_Packages_That_Were_Installed(self, app_packages, list_of_apps_installed):
        unique_packages = [x for x in app_packages if x not in list_of_apps_installed]
        return unique_packages

    def Get_Apps_Phase(self):
        pwd = os.getcwd()
        app_packages = self.List_Installed_App_Packages()
        unique_packages = self.Return_App_Packages_That_Were_Installed(app_packages,self.list_of_apps_installed)
        self.unique_apps = unique_packages
        print(unique_packages)
        for package in unique_packages:
            if not package.__contains__("appium") and not package.__contains__("airdroid"):
                self.Download_APK_To_File_System(package, pwd)
                time.sleep(1)
                # package=package.replace(".","_")
                time.sleep(2)
                path_to_download_to=''.join(['../APK/Google_Play_Apps/',package,'/'])
                self.create_directory_if_not_exists(path_to_download_to)
                os.chdir(path_to_download_to)

                if os.path.exists('base.apk'):
                    os.rename("base.apk", ''.join([package,'.apk']))
                
                for file in os.listdir(os.getcwd()):
                    if not file.__contains__("signed") and not file.__contains__("idsig"):
                        print("File:"+file)
                        cmd = ' '.join(["zipalign -fv 4", file, "signed"+file])
                        os.popen(cmd)
                        print("aligning!!!")
                        cmd = ' '.join(["apksigner sign --ks ../../../my-release-key.keystore --ks-pass pass:password ", "signed"+file])
                        os.popen(cmd)
                        print("signing!!!")
                        file_to_copy="".join([package,".apk"])
                        destination="".join(["../",file_to_copy])
                        shutil.copyfile(file_to_copy, destination)

            print("PWD TEST:"+os.getcwd())
            os.chdir(pwd)
        print("COMPLETED")