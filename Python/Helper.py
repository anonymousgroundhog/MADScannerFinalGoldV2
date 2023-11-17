import os, subprocess, traceback, hashlib, shutil, time

from termcolor import colored, cprint
from functools import reduce
from itertools import islice

class Helper:
    def unique(self, list1):
     
        # Print directly by using * symbol
        ans = reduce(lambda re, x: re+[x] if x not in re else re, list1, [])
        print(ans)

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

    def cleanup_folder_google_play(self, this_list):
        os.chdir('../APK/Google_Play_Apps')
        for file in os.listdir():
            if file in this_list:
                if os.path.isfile(file):
                    os.remove(file)
                else:
                    cmd = ' '.join(['rm -rf', file])
                    os.system(cmd)

# helper = Helper()
# print(helper.Calculate_SHA256('../APK/Google_Play_Apps/com.aige.hipaint.apk'))
# helper.cleanup_folder_google_play(['android', 'com.android.fmradio', 'com.android.cts.priv.ctsshim', 'com.google.android.youtube', 'com.android.internal.display.cutout.emulation.corner', 'com.google.android.ext.services', 'com.android.internal.display.cutout.emulation.double', 'com.android.providers.telephony', 'com.sprd.engineermode', 'io.appium.settings', 'com.google.android.googlequicksearchbox', 'com.android.providers.calendar', 'com.android.providers.media', 'com.google.android.onetimeinitializer', 'com.google.android.ext.shared', 'com.android.wallpapercropper', 'com.sprd.firewall', 'com.android.documentsui', 'android.auto_generated_rro__', 'com.android.externalstorage', 'com.android.htmlviewer', 'com.android.companiondevicemanager', 'com.android.mms.service', 'com.sprd.omacp', 'com.android.providers.downloads', 'com.google.android.apps.messaging', 'com.android.sprd.telephony.server', 'com.google.android.configupdater', 'com.android.soundrecorder', 'io.appium.uiautomator2.server', 'com.android.defcontainer', 'com.android.providers.downloads.ui', 'com.android.vending', 'com.dti.blu', 'com.android.pacprocessor', 'com.android.simappdialog', 'com.sprd.validationtools', 'com.android.internal.display.cutout.emulation.tall', 'com.android.certinstaller', 'com.android.carrierconfig', 'com.google.android.marvin.talkback', 'com.sand.airdroid', 'com.google.android.apps.work.oobconfig', 'com.bluproducts.activationapp', 'android', 'com.android.camera2', 'com.android.egg', 'com.android.mtp', 'com.android.nfc', 'com.android.stk', 'com.android.launcher3', 'com.android.backupconfirm', 'com.sprd.screencapture', 'com.google.android.deskclock', 'com.sprd.quickcamera', 'com.android.statementservice', 'com.google.android.gm', 'com.unisoc.storageclearmanager', 'com.google.android.apps.tachyon', 'com.android.messaging.smilplayer', 'com.android.settings.intelligence', 'com.android.systemui.theme.dark', 'com.google.android.setupwizard', 'com.android.providers.settings', 'com.android.sharedstoragebackup', 'com.google.android.music', 'com.android.printspooler', 'com.android.dreams.basic', 'com.android.se', 'com.android.inputdevices', 'com.google.android.apps.wellbeing', 'com.google.android.dialer', 'com.android.bips', 'com.google.android.apps.nbu.files', 'com.android.musicfx', 'com.google.android.apps.docs', 'com.google.android.apps.maps', 'android.autoinstalls.config.BLU.G0090', 'com.android.mmsfolderview', 'com.android.cellbroadcastreceiver', 'com.google.android.webview', 'com.opera.browser', 'com.sprd.uplmnsettings', 'com.google.android.contacts', 'com.android.server.telecom', 'com.google.android.syncadapters.contacts', 'com.android.keychain', 'com.google.android.calculator', 'com.android.chrome', 'com.sprd.uasetting', 'com.android.gallery3d', 'com.google.android.packageinstaller', 'com.spreadtrum.ims', 'com.spreadtrum.vce', 'com.google.android.gms', 'com.google.android.gsf', 'com.google.android.ims', 'com.google.android.tag', 'com.google.android.tts', 'com.ww6.agetest', 'com.android.calllogbackup', 'com.google.android.partnersetup', 'com.sprd.powersavemodelauncher', 'com.google.android.videos', 'com.android.carrierdefaultapp', 'com.android.proxyhandler', 'com.google.android.feedback', 'com.google.android.printservice.recommendation', 'com.google.android.apps.photos', 'com.sprd.logmanager', 'com.google.android.calendar', 'com.android.managedprovisioning', 'com.android.dreams.phototable', 'com.sprd.cellbroadcastreceiver', 'io.appium.uiautomator2.server.test', 'com.spreadtrum.vowifi', 'com.android.providers.partnerbookmarks', 'com.android.smspush', 'com.pivotmobile.android.metrics', 'com.google.android.gms.policy_sidecar_aps', 'com.securew2.paladin', 'com.sprd.providers.photos', 'com.google.android.backuptransport', 'com.android.storagemanager', 'com.android.bookmarkprovider', 'com.android.settings', 'com.spreadtrum.sgps', 'com.sprd.systemupdate', 'com.android.cts.ctsshim', 'com.sprd.sprdnote', 'com.android.vpndialogs', 'com.android.phone', 'com.android.shell', 'com.sprd.ImsConnectionManager', 'com.android.wallpaperbackup', 'com.android.providers.blockednumber', 'com.android.providers.userdictionary', 'com.android.emergency', 'com.android.location.fused', 'com.opera.preinstall', 'com.android.systemui', 'com.android.bluetoothmidiservice', 'com.android.traceur', 'com.android.modemnotifier', 'com.android.bluetooth', 'com.android.wallpaperpicker', 'com.android.providers.contacts', 'com.android.captiveportallogin', 'com.google.android.inputmethod.latin', 'com.google.android.apps.restore'])