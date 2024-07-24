import os, subprocess, traceback, hashlib, shutil, time
import Helper, Apps_Download, Copy_Files_For_Testing, Get_App_Names

from subprocess import run
from termcolor import colored, cprint

class MADScanner:
	def __init__(self):
		self.installed_apps_list = [];
		self.copy_from_folder_path = 'Google_Play_Apps';
		self.df_files_and_their_packages = '';

	def Set_DF_Files_And_Their_Packages(self, df):
		self.df_files_and_their_packages = df
	
	def Set_Copy_From_Folder_Path(self, this_path):
		self.copy_from_folder_path = this_path

	def Set_Apps_Installed(self, this_list):
		self.installed_apps_list = this_list

	def Compile_Framework_Code(self):
		cwd=os.getcwd()
		os.chdir('../Java/')
		os.system('rm -rf Classes/sootOutput')
		os.system('javac -d Classes -cp "../Jar_Libs/*" MyTransform.java BAnalysisApp.java SootExample.java SootTest3.java SootInstrumentationHelper.java Once.java SootUtil.java ClassLiteralMethodSourceonInit.java')
		os.chdir(cwd)

	def Function_Get_MainActivity_And_Write_To_File(self, file, folder):
		path=''.join(['../APK/',folder,'/',file])
		main_activity=subprocess.run(['aapt', 'dump', 'badging', path], stdout=subprocess.PIPE)
		main_activity=main_activity.stdout.decode('utf-8').split('\n')
		main_activity = [item for item in main_activity if "launchable-activity" in item]
		main_activity = main_activity[0].replace("launchable-activity: ","").split(" ")[0].replace("name=","").replace("'","")
		# print(main_activity)

		main_class=subprocess.run(['aapt', 'dump', 'badging', path], stdout=subprocess.PIPE)
		main_class=main_class.stdout.decode('utf-8').split('\n')
		main_class = [item for item in main_class if "package" in item]
		main_class = main_class[0].replace("package: ","").split(" ")[0].replace("name=","").replace("'","")
		
		# Open a file in write mode ('w')
		with open('APK_Details.txt', 'w') as file:
		    # Write text to the file
		    file.write(''.join(["Main_Activity: ",main_activity,"\n"]))
		    file.write(''.join(["Main_Class: ",main_class]))

	def Function_Run_Framework_And_Zip_And_Sign_APK(self, file, folder, option, sdkbuild_version):
		stuff_to_return = ''
		helper = Helper.Helper()
		pwd=os.getcwd()
		os.chdir("../Java/Classes")
		
		SignedFile=''.join(['signed',file])
		APKPath=''.join(["../../APK/",folder,'/',file])
		cprint(''.join(["\nAPK path is: ", APKPath]), 'cyan')
		cprint(''.join(["Current directory is: ", os.getcwd()]),'cyan')
		path=''.join(['../../APK/',folder,'/',file])
		cprint(''.join(["sdkBuild Version: ", sdkbuild_version]), 'cyan')
		# hash=$([ -e $APKPath ] && sha256sum $APKPath | cut -d " " -f1)
		hash_value = helper.Calculate_SHA256(APKPath)
		android_api_version= ''.join(['-android-api-version ', str(sdkbuild_version)])
		# try:
		cmd=' '.join(['java -Xmx20g -XX:+ExitOnOutOfMemoryError -cp ".:../../Jar_Libs/*" BAnalysisApp', file, hash_value, option, folder, android_api_version])
		# proc = subprocess.run([cmd], shell=True, check=True, capture_output=True)
		data = run(cmd, capture_output=True, shell=True)
		print("STDOUT:", data.stdout.decode('utf-8'))
		# print("STDERR:",data.stderr.decode('utf-8'))

		# all_details = ' '.join([str(data.stdout.decode('utf-8')), str(data.stderr.decode('utf-8'))])
		stuff_to_return = ''
		stuff_to_return=data.stderr.decode('utf-8')
		list_stuff_to_return = stuff_to_return.split('\n')
		if len(list_stuff_to_return) > 2 and not '[main] INFO soot.toDex.DexPrinter - Do not forget to sign the .apk file with jarsigner and to align it with zipalign' in list_stuff_to_return:
			cprint(''.join(['\tFailed to run app:', file]), 'red')
			return list_stuff_to_return
		else:
			cprint(''.join(['\n\tSucessfully ran app:', file]), 'green')
			os.chdir('sootOutput')
			path_to_check=os.path.join(os.getcwd(), file)
			if os.path.exists(path_to_check):
				# sign file
				cmd=' '.join(['zipalign -fv 4',file, SignedFile])
				# os.system(cmd)
				data = run(cmd, capture_output=True, shell=True)
				if len(data.stderr.decode('utf-8').split('\n')) > 1:
					print("STDERR:",data.stderr.decode('utf-8'))
				cmd=' '.join(['apksigner sign --ks ../../../my-release-key.keystore --ks-pass pass:password', SignedFile])
				data = run(cmd, capture_output=True, shell=True)
				if len(data.stderr.decode('utf-8').split('\n')) > 1:
					print("STDERR:",data.stderr.decode('utf-8'))
				os.system("rm *.idsig")
			return ''
		os.chdir(pwd)

	def Zip_And_Sign_APK(self, file):#, folder, option, sdkbuild_version):
		stuff_to_return = ''
		helper = Helper.Helper()
		pwd=os.getcwd()
		# os.chdir("../Java/Classes")
		cprint(pwd, 'green')
		SignedFile=''.join(['signed',file])
		path_to_check=os.path.join(os.getcwd(), file)
		if os.path.exists(path_to_check):
			# sign file
			data=''
			try:
				cmd=' '.join(['zipalign -fv 4',file, SignedFile])
				# os.system(cmd)
				data = run(cmd, capture_output=True, shell=True)
			except:
				cprint(''.join(['unable to run',file]),'red')

			if len(data.stderr.decode('utf-8').split('\n')) > 1:
				print("STDERR:",data.stderr.decode('utf-8'))
			else:
				cmd=' '.join(['apksigner sign --ks ../../../my-release-key.keystore --ks-pass pass:password', SignedFile])
				data = run(cmd, capture_output=True, shell=True)
				if len(data.stderr.decode('utf-8').split('\n')) > 1:
					print("STDERR:",data.stderr.decode('utf-8'))
				os.system("rm *.idsig")
		# return ''
		os.chdir(pwd)

	def Function_Run_Framework_And_Copy_Jimple_Files(self, file, folder, option, sdkbuild_version):
		stuff_to_return = ''
		helper = Helper.Helper()
		pwd=os.getcwd()
		os.chdir("../Java/Classes")
		
		SignedFile=''.join(['signed',file])
		APKPath=''.join(["../../APK/",folder,'/',file])
		cprint(''.join(["\nAPK path is: ", APKPath]), 'cyan')
		cprint(''.join(["Current directory is: ", os.getcwd()]),'cyan')
		path=''.join(['../../APK/',folder,'/',file])
		cprint(''.join(["sdkBuild Version: ", sdkbuild_version]), 'cyan')
		# hash=$([ -e $APKPath ] && sha256sum $APKPath | cut -d " " -f1)
		hash_value = helper.Calculate_SHA256(APKPath)
		android_api_version= ''.join(['-android-api-version ', str(sdkbuild_version)])
		# try:
		cmd=' '.join(['java -Xmx20g -XX:+ExitOnOutOfMemoryError -cp ".:../../Jar_Libs/*" BAnalysisApp', file, hash_value, option, folder, android_api_version])
		# proc = subprocess.run([cmd], shell=True, check=True, capture_output=True)
		data = run(cmd, capture_output=True, shell=True)
		print("STDOUT:", data.stdout.decode('utf-8'))
		# print("STDERR:",data.stderr.decode('utf-8'))
		stuff_to_return = ''
		stuff_to_return=data.stderr.decode('utf-8')
		list_stuff_to_return = stuff_to_return.split('\n')
		if len(list_stuff_to_return) > 2 and not '[main] INFO soot.toDex.DexPrinter - Do not forget to sign the .apk file with jarsigner and to align it with zipalign' in list_stuff_to_return:
			cprint(''.join(['\tFailed to run app:', file]), 'red')
			return list_stuff_to_return
		else:
			cprint(''.join(['\n\tSucessfully ran app:', file]), 'green')
			# os.chdir('sootOutput')
			
		os.chdir(pwd)

	def Download_And_Return_Info_On_Apps(self, google_play_folder_path):
		cwd=os.getcwd()
		appsdownload = Apps_Download.Apps_Download()
		# appsdownload.Print_List_Installed_App_Packages()
		appsdownload.Set_Installed_Apps(self.installed_apps_list)
		# appsdownload.See_Installed_Apps()
		cprint(cwd,'red')
		appsdownload.Set_Google_Play_Folder_Path(google_play_folder_path)
		appsdownload.Get_Apps_Phase()
		os.chdir(cwd)
		get_app_names = Get_App_Names.Get_App_Names()
		get_app_names.Set_Testing_Directory('Google_Play_Download_Test')
		get_app_names.Set_Directories_To_Ignore(['BannerRecyclerViewExample', 'TestClassAdViewAdListener'])
		df = get_app_names.Return_DataFrame_Data() 
		print(df)
		return appsdownload.unique_apps

	def Cleanup_Folders_After_Download(self):
		print("Performing Cleanup of Folders!!")
		cwd= os.getcwd()
		os.chdir("../APK/Google_Play_Download_Test")

		entries = os.listdir('.')
		directories = [entry for entry in entries if os.path.isdir(entry)]
		print(os.getcwd())
		for d in directories:
		    os.chdir(d)
		    print("\t dir is:", str(os.getcwd()))
		    # print(str(os.listdir()))
		    os.system("rm *.idsig")
		    os.chdir('../')
		os.chdir(cwd)

	def Copy_Files_To_Test(self, list_packages):
		cwd=os.getcwd()
		copy_files_for_testing = Copy_Files_For_Testing.Copy_Files_For_Testing()
		copy_files_for_testing.Change_Dir(copy_files_for_testing.copy_to_folder_path)
		# print(os.getcwd())
		copy_files_for_testing.Set_Copy_From_Path(self.copy_from_folder_path)

		copy_files_for_testing.Set_Packages_List(list_packages)
		copy_files_for_testing.Cleanup_Folder_Testing()
		copy_files_for_testing.Set_Copy_From_Path(''.join(['../APK/',self.copy_from_folder_path]))
		copy_files_for_testing.Copy_Files_For_Testing()
		os.chdir(cwd)


# madscanner = MADScanner()
# madscanner.Compile_Framework_Code()