import os, shutil
from termcolor import colored, cprint

class Copy_Files_For_Testing:
	def __init__(self):
		self.copy_from_folder_path = "../APK/Google_Play_Apps";
		self.copy_to_folder_path = "../APK/Testing";
		self.packages_list_to_copy = []

	def Set_Copy_From_Path(self, from_path):
		self.copy_from_folder_path = from_path
		
	def Set_Copy_To_Path(self, to_path):
		self.copy_to_folder_path = to_path

	def Set_Packages_List(self, list_packages):
		self.packages_list_to_copy = list_packages

	def Cleanup_Folder_Testing(self):
		os.system('rm -rf *')

	def Change_Dir(self, path):
		os.chdir(path)

	def Copy_Files_For_Testing(self):
		# print('test:::',os.getcwd())
		for package in self.packages_list_to_copy:
			# print('testing:::',self.copy_from_folder_path, ' ', package)
			package = package.replace('.apk', '')
			apk_path_check = ''.join(['../',self.copy_from_folder_path,'/',package,'.apk'])
			apk_path_check_2 = ''.join(['../',self.copy_from_folder_path,'/',package, '/', package,'.apk']) 
			if os.path.isfile(apk_path_check):
				# print(apk_path_check)
				shutil.copyfile(apk_path_check,apk_path_check.split('/').pop(), follow_symlinks=True)

			if os.path.isfile(apk_path_check_2):
				# print(apk_path_check_2)
				shutil.copyfile(apk_path_check_2,apk_path_check_2.split('/').pop(), follow_symlinks=True)

# copy_files_for_testing = Copy_Files_For_Testing()
# copy_files_for_testing.Change_Dir(copy_files_for_testing.copy_to_folder_path)
# # print(os.getcwd())
# copy_files_for_testing.Set_Copy_From_Path("Google_Play_Apps")

# copy_files_for_testing.Set_Packages_List(["jp.ne.ibis.ibispaintx.app", "com.brakefield.painter", "com.naver.linewebtoon", "org.readera", "com.aige.hipaint", "com.hubx.imagination", "com.genius.gifMaster.gp"])
# copy_files_for_testing.Cleanup_Folder_Testing()
# copy_files_for_testing.Copy_Files_For_Testing()