import os, subprocess, Helper
from termcolor import colored, cprint
from subprocess import run
unique_files = []
helper = Helper.Helper()
os.system('clear')
helper_apk_files_list = helper.Get_Library_Helper_File_Names("Google_Play_Apps")
for file in helper_apk_files_list:
	print(file)




# print(helper_apk_files_list)
# os.chdir('../APK')
# pwd= os.getcwd()
# os.chdir("Backup_APK_Files_With_No_AdListener")
# for file in os.listdir():
# 	cprint(file, 'green')
# 	file_path = ''.join([file])
# 	cmd = ' '.join(['adb install', file])
# 	data = run(cmd, capture_output=True, shell=True)
# 	error_msg = data.stderr.decode('utf-8').split('\n')

# 	if len(error_msg) > 1:
# 		cprint("Unable to Install!!!", 'red')
# 		print(error_msg)
# 		# os.chdir('APK_Helper_Files')
# 		for these_files in helper_apk_files_list:

# 			cmd = ''.join(['adb install-multiple ', file_path, ' ', these_files])
# 			data = run(cmd, capture_output=True, shell=True)
# 			error_msg = data.stderr.decode('utf-8').split('\n')
# 			if len(error_msg) < 1:
# 				cprint(''.join(['FOUND FILES:', these_files]), 'green')
# 			else:
# 				cprint(error_msg, 'red')
# 				continue
# 		os.chdir(pwd)
# 	else:
# 		cprint("Able to Install!!!", 'green')

# 	aapt_details=subprocess.run(['aapt', 'dump', 'badging', file_path], stdout=subprocess.PIPE).stdout.decode('utf-8').split('\n')
# 	main_class = [item for item in aapt_details if "package" in item]
# 	main_class = main_class[0].replace("package: ","").split(" ")[0].replace("name=","").replace("'","")

# 	os.system(' '.join(['adb uninstall', main_class]))
# os.chdir('../APK/Google_Play_Apps')
# these_directories = helper.list_directories(os.getcwd())

# for this_dir in these_directories:
# 	cprint(this_dir, 'green')
# 	for file in os.listdir(this_dir):
# 		if not file.__contains__(this_dir) and file.__contains__('signed'):
# 			print(file)
# 			if file not in unique_files:
# 				unique_files.append(file)

# cprint(''.join(['Files are:', str(unique_files)]), 'cyan')

# combinations=helper.list_combinations(unique_files)

# for comb in combinations:
# 	# print(comb)
# 	for items in comb:
# 		print(' '.join(items))