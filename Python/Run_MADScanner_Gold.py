# THIS FILE IS FOR RUNNING THE FRAMEWORK ON EACH APK FILE, ZIPPING, AND FINALLY ALIGNING THE FILE IN THE Java/Classes directory
import os, subprocess, traceback, hashlib, shutil
import Helper, MADScanner
from termcolor import colored, cprint
from subprocess import run


def Run_MADScanner_On_Apps_Gold(this_folder, copy_from_folder, option):
	pwd= os.getcwd()
	helper = Helper.Helper()
	madscanner = MADScanner.MADScanner()
	installed_app_packages = helper.Read_File_And_Return_Lines('Emulator_Installed_Packages/installed_packages.txt')
	madscanner.Set_Apps_Installed(installed_app_packages)
	madscanner.Compile_Framework_Code()
	madscanner.Set_Copy_From_Folder_Path(copy_from_folder)
	# option="dex"
	# option="J"
	Test_Folder = this_folder
	df_app_info = pd.read_csv('../Data/App_Category_Details.csv')
	cprint("test folder is: " + str(Test_Folder), 'green')
	folder_path_for_testing = ''.join(['../APK/',str(Test_Folder)])
	files_of_interest = [item for item in str(os.listdir(folder_path_for_testing)) if item in df_app_info['App_Name']]
	# cprint(files_of_interest,'yellow')
	os.system('rm -rf ../Java/Classes/sootOutput')
	for file in os.listdir(folder_path_for_testing):
		# print(row)
		# file = str(row['App_Name'])
		# cprint(''.join(['\n\tRunning app:', str(index),'/',str(len(df_app_info))]), 'magenta')
		cprint(''.join(['\nFile:',file]), 'cyan')
		error_msg = ''
		sdkbuild_version = helper.Get_App_SDK_Version(''.join(['../APK/',this_folder, '/',file]))
		try:
			# if file.__contains__('banner_example'):
			error_msg = madscanner.Function_Run_Framework_And_Copy_Jimple_Files(file, Test_Folder, option, str(sdkbuild_version))
			os.chdir(pwd)
			print(error_msg)
		except:
			cprint(''.join(["Unable to Run framework for:", file]), 'red')
			# df_app_info.loc[index, 'MADScanner_Injected_Logs_Sucessfully'] = 'No'
			print(traceback.format_exc())
			os.chdir(pwd)
			continue

	print(os.getcwd())
	os.chdir(pwd)
	# df_app_info.to_csv('../Data/App_Category_Details2.csv', index=False)

def Remove_Emtpy_Folders_From_sootOutputFolder():
	pwd = os.getcwd()
	os.chdir('../Java/Classes/')
	for file in os.listdir():
		if not os.path.isfile(file) and not os.listdir(file):
			os.rmdir(file)
	os.chdir(pwd)

def Zip_And_Sign_APK_In_SootOutput_Folder():
	madscanner = MADScanner.MADScanner()
	pwd = os.getcwd()
	os.chdir('../Java/Classes/')
	for file in os.listdir():
		if not os.path.isfile(file):
			os.chdir(file)
			madscanner.Zip_And_Sign_APK(file)
			os.chdir("../")


os.system('clear')
# os.chdir('../')
cwd=os.getcwd()
# ## MAKE SURE YOU ARE IN THE DIRECTORY PYTHON
os.chdir(cwd)
Run_MADScanner_On_Apps_Gold('Google_Play','Google_Play', 'dex')
Remove_Emtpy_Folders_From_sootOutputFolder()
Zip_And_Sign_APK_In_SootOutput_Folder()
