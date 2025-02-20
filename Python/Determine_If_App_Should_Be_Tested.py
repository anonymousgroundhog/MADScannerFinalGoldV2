import os, shutil, time, pandas as pd 

from termcolor import colored, cprint

# os.chdir('../')

def Get_Main_Activity(this_file):
	# print(os.getcwd())
	str_cmd = ' '.join(['aapt dump badging', this_file, '| grep launchable'])
	try:
		cmd=os.popen(str_cmd).read().replace('launchable-activity: name=', '').split(' ')[0].replace("'",'')
	except:
		cmd=''
	# cprint(cmd, 'cyan')
	return cmd

def Get_Main_Class(this_file):
	# print(os.getcwd())
	str_cmd = ' '.join(['aapt dump badging', this_file, '| grep package'])
	try:
		cmd=os.popen(str_cmd).read().replace('package:', '').split(' ')[1].replace('name=','').replace("'",'')
	except:
		cmd=''
	# cprint(cmd, 'cyan')
	return cmd

def Copy_Files_To_Monkey_Testing_Folder(this_folder):
	# os.chdir('../')
	cwd=os.getcwd()
	os.chdir('../Java/Classes')
	for file in os.listdir():
		if not os.path.isfile(file):
			os.chdir(file)
			files=os.listdir()
			for this_file in files:
				if 'signed' in this_file:
					cprint(this_file, 'green')
					# COPY TO TESTING FOLDER
					dst='/'.join(['..',this_folder,this_file])
					try:
						shutil.copyfile(this_file,dst, follow_symlinks=True)
					except:
						continue
					shutil.rmtree('../'+file)
			os.chdir('../')
	os.chdir(cwd)

def Check_Files_In_Folder_Have_Main_Activity(this_folder, df):
	cwd=os.getcwd()
	this_path='/'.join(['../Java/Classes',this_folder])
	try:
		os.chdir(this_path)
		for this_file in os.listdir():
			main_activity=Get_Main_Activity(this_file)
			main_class=Get_Main_Class(this_file)
			if main_activity != '' and main_class != '':
				cprint(' '.join([this_file,'pass']), 'green')
				print(main_activity, main_class)
				new_row = pd.DataFrame([{'File': this_file, 'Folder': this_folder, 'Status': 'passed'}])
				df = pd.concat([df, new_row], ignore_index=True)
			else:
				new_row = pd.DataFrame([{'File': this_file, 'Folder': this_folder, 'Status': 'failed'}])
				df = pd.concat([df, new_row], ignore_index=True)
				cprint(' '.join([this_file,'fail']), 'red')
		os.chdir(cwd)
	except:
		cprint(''.join(['no directory for:',this_path]), 'yellow')
	return df


df = pd.DataFrame(columns=['File','Folder','Status']) 
os.system('clear')
Copy_Files_To_Monkey_Testing_Folder('APK_Files_To_Monkey_Test')
#df=Check_Files_In_Folder_Have_Main_Activity('APK_Files_To_Monkey_Test', df)
print(df)
