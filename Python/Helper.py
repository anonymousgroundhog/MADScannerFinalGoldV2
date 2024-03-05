import os, subprocess, traceback, hashlib, shutil, time, pandas as pd, itertools, sys

from termcolor import colored, cprint
from functools import reduce
from itertools import islice

class Helper:
    def Remove_Directory_Files(self, dir):
        for f in os.listdir(dir):
                os.remove(os.path.join(dir, f))
    def Write_APK_Error_To_File(self, str_app_name, str_error):
        file1 = open(''.join(['../Data/APK_Run_Errors/Errors.txt']), "a")  # append mode
        file1.write(''.join([str_app_name," \n"]))
        file1.write(''.join([str_error," \n"]))
        file1.close()

    def Write_APK_Install_Error_To_File(self, str_app_name, str_error):
        # os.chdir('../Java/Classes/sootOutput')
        file1 = open(''.join(['../../../Data/APK_Run_Errors/APK_Install_Errors.txt']), "a")  # append mode
        file1.write(''.join([str_app_name," \n"]))
        file1.write(''.join([str_error," \n"]))
        file1.close()

    def unique(self, list1):
     
        # Print directly by using * symbol
        ans = reduce(lambda re, x: re+[x] if x not in re else re, list1, [])
        return(ans)

    def sliding_window_iter(self, seq, n):
        "Returns a sliding window (of width n) over data from the iterable"
        "   s -> (s0,s1,...s[n-1]), (s1,s2,...,sn), ...                   "
        it = iter(seq)
        result = tuple(islice(it, n))
        if len(result) == n:
            yield result
        for elem in it:
            result = result[1:] + (elem,)
            yield result

    def Pre_Cleanup(self):
        if os.getcwd().split("/").pop().__contains__("Python"):
            os.system('rm ../Data/App_Category_Details*.csv')
            os.system('rm ../Java/Classes/sootOutput/*')
            os.system('rm -rf ../Java/APK_Files_Signed_And_Injected_Logs/*')
            cprint("Completed Pre_Cleanup!!!", 'green')
        else:
            cprint("Not in the correct directory!!!", 'red')

    def Calculate_SHA256(self, file_path):
        sha256_hash = hashlib.sha256()
        # Open the file in binary read mode
        with open(file_path, "rb") as file:
            # Read and update hash in chunks of 4K (memory efficient for large files)
            for byte_block in iter(lambda: file.read(4096), b""):
                sha256_hash.update(byte_block)
        # Return the hexadecimal format of the hash
        return sha256_hash.hexdigest()

    def list_directories(self, path):
        return [d for d in os.listdir(path) if os.path.isdir(os.path.join(path, d))]

    def list_combinations(self, lst):
        combs = []

        for i in range(1, len(lst)+1):
            # combs.append(i)
            els = [list(x) for x in itertools.combinations(lst, i)]
            combs.append(els)
        return combs

    def Get_Library_Helper_File_Names(self, dir):
        pwd = os.getcwd()
        this_path = ''.join(['../APK/', dir])
        unique_files = []
        os.chdir(this_path)
        these_directories = self.list_directories(os.getcwd())

        for this_dir in these_directories:
            # cprint(this_dir, 'green')
            for file in os.listdir(this_dir):
                if not file.__contains__(this_dir) and file.__contains__('signed'):
                    # print(file)
                    if file not in unique_files:
                        shutil.copyfile(''.join([this_dir,'/',file]), ''.join(['../APK_Helper_Files/'+file]))
                        unique_files.append(file)

        # cprint(''.join(['Files are:', str(unique_files)]), 'cyan')

        combinations=self.list_combinations(unique_files)
        unique_apk_files_list = []
        for comb in combinations:
            # print(comb)
            for items in comb:
                unique_apk_files_list.append(' '.join(items))

        os.chdir(pwd)
        return unique_apk_files_list

    def cleanup_folder_google_play(self, this_list):
        os.chdir('../APK/Google_Play_Apps')
        for file in os.listdir():
            if file in this_list:
                if os.path.isfile(file):
                    os.remove(file)
                else:
                    cmd = ' '.join(['rm -rf', file])
                    os.system(cmd)

    def Remove_Empty_Logs(self):
        directory='../Data/Logs'
        for file in os.listdir(directory):
            file_path=''.join([directory, '/', file])
            print(file)
            with open(file_path, 'r') as file:
                line_count = sum(1 for _ in file)
                message = f"The file contains {line_count} lines."
                print(message)

            if line_count < 3:
                os.remove(file_path)

    def Move_Valid_APKS_To_Folder(self):
        pwd = os.getcwd()
        df_app_info = pd.read_csv('../Data/App_Category_Details2.csv')
        MADScanner_Injected_Logs_Sucessfully_Filtered = df_app_info['MADScanner_Injected_Logs_Sucessfully'] =='Yes'
        App_Ads_Filtered = df_app_info['App_Ads'] == 'Yes'
        Able_To_Install_Filtered = df_app_info['Able_To_Install'] == 'Yes'
        
        df_apps_to_copy = df_app_info[Able_To_Install_Filtered & App_Ads_Filtered]
        print(df_apps_to_copy)
        app_names_to_copy = df_apps_to_copy['App_Name']
        os.chdir('../APK/Valid_APK_Files_To_Test')
        os.system('rm *.apk')
        for file in app_names_to_copy:
            file = ''.join(['signed',file])
            # path=''.join(['../Java/Classes/sootOutput/',file])
            source_file = os.path.join('../../Java/Classes/sootOutput/', file)
            destination_file = os.path.join(os.getcwd(), file)
            shutil.copy(source_file, destination_file)
            # print(path)
        os.chdir(pwd)

    def Filter_Dataframe_By_Keyword(self, df, this_label, word):
        df = df[df[this_label] == word]
        return df

    def Drop_Dataframe_Rows(self, df, this_list):
        # contains_all = all(elem in this_list for elem in df.columns.to_list())
        is_subset = set(this_list) <= set(df.columns.to_list())
        # print(is_subset)
        if is_subset:
            # print('True')
            df = df.drop(this_list, axis=1)
        return df

    def Read_File_And_Return_Lines(self, file_path):
        with open(file_path, 'r') as file:
            lines = [line.strip() for line in file.readlines()]

        return lines

    def Read_CSV_Apps_And_Check_If_Manual_Test(self, this_path):
        df = pd.read_csv(this_path)
        df_app_unable_to_install = df['Able_To_Install'] == 'No'
        df_app_empty_activity = df['Main_Activity'].isna()
        df_app_has_ads = df['App_Ads'] == 'Yes'
        df_madscanner_injected_logs_sucessfully = df['MADScanner_Injected_Logs_Sucessfully'] == 'Yes'
        combined_condition = df_app_unable_to_install & df_app_empty_activity & df_app_has_ads & df_madscanner_injected_logs_sucessfully
        df.loc[combined_condition, 'Try_Manual_Testing'] = 'Yes'
        df.to_csv(this_path, index=False)
        print(df[combined_condition])

# helper = Helper()
# helper.Write_APK_Install_Error_To_File("Test", 'Testing error')
# helper.Write_APK_Error_To_File("Test_App", 'This is fun\n\t Now What')
# print(helper.Calculate_SHA256('../APK/Google_Play_Apps/com.aige.hipaint.apk'))
# helper.cleanup_folder_google_play(['android', 'com.android.fmradio', 'com.android.cts.priv.ctsshim', 'com.google.android.youtube', 'com.android.internal.display.cutout.emulation.corner', 'com.google.android.ext.services', 'com.android.internal.display.cutout.emulation.double', 'com.android.providers.telephony', 'com.sprd.engineermode', 'io.appium.settings', 'com.google.android.googlequicksearchbox', 'com.android.providers.calendar', 'com.android.providers.media', 'com.google.android.onetimeinitializer', 'com.google.android.ext.shared', 'com.android.wallpapercropper', 'com.sprd.firewall', 'com.android.documentsui', 'android.auto_generated_rro__', 'com.android.externalstorage', 'com.android.htmlviewer', 'com.android.companiondevicemanager', 'com.android.mms.service', 'com.sprd.omacp', 'com.android.providers.downloads', 'com.google.android.apps.messaging', 'com.android.sprd.telephony.server', 'com.google.android.configupdater', 'com.android.soundrecorder', 'io.appium.uiautomator2.server', 'com.android.defcontainer', 'com.android.providers.downloads.ui', 'com.android.vending', 'com.dti.blu', 'com.android.pacprocessor', 'com.android.simappdialog', 'com.sprd.validationtools', 'com.android.internal.display.cutout.emulation.tall', 'com.android.certinstaller', 'com.android.carrierconfig', 'com.google.android.marvin.talkback', 'com.sand.airdroid', 'com.google.android.apps.work.oobconfig', 'com.bluproducts.activationapp', 'android', 'com.android.camera2', 'com.android.egg', 'com.android.mtp', 'com.android.nfc', 'com.android.stk', 'com.android.launcher3', 'com.android.backupconfirm', 'com.sprd.screencapture', 'com.google.android.deskclock', 'com.sprd.quickcamera', 'com.android.statementservice', 'com.google.android.gm', 'com.unisoc.storageclearmanager', 'com.google.android.apps.tachyon', 'com.android.messaging.smilplayer', 'com.android.settings.intelligence', 'com.android.systemui.theme.dark', 'com.google.android.setupwizard', 'com.android.providers.settings', 'com.android.sharedstoragebackup', 'com.google.android.music', 'com.android.printspooler', 'com.android.dreams.basic', 'com.android.se', 'com.android.inputdevices', 'com.google.android.apps.wellbeing', 'com.google.android.dialer', 'com.android.bips', 'com.google.android.apps.nbu.files', 'com.android.musicfx', 'com.google.android.apps.docs', 'com.google.android.apps.maps', 'android.autoinstalls.config.BLU.G0090', 'com.android.mmsfolderview', 'com.android.cellbroadcastreceiver', 'com.google.android.webview', 'com.opera.browser', 'com.sprd.uplmnsettings', 'com.google.android.contacts', 'com.android.server.telecom', 'com.google.android.syncadapters.contacts', 'com.android.keychain', 'com.google.android.calculator', 'com.android.chrome', 'com.sprd.uasetting', 'com.android.gallery3d', 'com.google.android.packageinstaller', 'com.spreadtrum.ims', 'com.spreadtrum.vce', 'com.google.android.gms', 'com.google.android.gsf', 'com.google.android.ims', 'com.google.android.tag', 'com.google.android.tts', 'com.ww6.agetest', 'com.android.calllogbackup', 'com.google.android.partnersetup', 'com.sprd.powersavemodelauncher', 'com.google.android.videos', 'com.android.carrierdefaultapp', 'com.android.proxyhandler', 'com.google.android.feedback', 'com.google.android.printservice.recommendation', 'com.google.android.apps.photos', 'com.sprd.logmanager', 'com.google.android.calendar', 'com.android.managedprovisioning', 'com.android.dreams.phototable', 'com.sprd.cellbroadcastreceiver', 'io.appium.uiautomator2.server.test', 'com.spreadtrum.vowifi', 'com.android.providers.partnerbookmarks', 'com.android.smspush', 'com.pivotmobile.android.metrics', 'com.google.android.gms.policy_sidecar_aps', 'com.securew2.paladin', 'com.sprd.providers.photos', 'com.google.android.backuptransport', 'com.android.storagemanager', 'com.android.bookmarkprovider', 'com.android.settings', 'com.spreadtrum.sgps', 'com.sprd.systemupdate', 'com.android.cts.ctsshim', 'com.sprd.sprdnote', 'com.android.vpndialogs', 'com.android.phone', 'com.android.shell', 'com.sprd.ImsConnectionManager', 'com.android.wallpaperbackup', 'com.android.providers.blockednumber', 'com.android.providers.userdictionary', 'com.android.emergency', 'com.android.location.fused', 'com.opera.preinstall', 'com.android.systemui', 'com.android.bluetoothmidiservice', 'com.android.traceur', 'com.android.modemnotifier', 'com.android.bluetooth', 'com.android.wallpaperpicker', 'com.android.providers.contacts', 'com.android.captiveportallogin', 'com.google.android.inputmethod.latin', 'com.google.android.apps.restore'])
