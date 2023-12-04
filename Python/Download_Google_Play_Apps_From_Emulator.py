import os, Helper, Apps_Download

class Download_Google_Play_Apps_From_Emulator:
	def __init__(self):
		self.installed_apps_list = [];
		self.copy_from_folder_path = 'Google_Play_Apps';
		self.df_files_and_their_packages = ''

	def Set_Apps_List(self, packages):
		self.installed_apps_list = packages

	def Download_Apps(self, google_play_folder_path):
		cwd=os.getcwd()
		appsdownload = Apps_Download.Apps_Download()
		# appsdownload.Print_List_Installed_App_Packages()
		appsdownload.Set_Installed_Apps(self.installed_apps_list)
		# appsdownload.See_Installed_Apps()
		print(cwd)
		appsdownload.Set_Google_Play_Folder_Path(google_play_folder_path)
		appsdownload.Get_Apps_Phase()

helper = Helper.Helper()
installed_app_packages = helper.Read_File_And_Return_Lines('Emulator_Installed_Packages/installed_packages.txt')

download_google_play_apps_from_emulator = Download_Google_Play_Apps_From_Emulator()
download_google_play_apps_from_emulator.Set_Apps_List(installed_app_packages)

download_google_play_apps_from_emulator.Download_Apps('../APK/Google_Play_Download_Test/')
