import os, keyword, numpy as np
from termcolor import colored, cprint

def unique(list1):
    x = np.array(list1)
    return(np.unique(x))

def Extract_Import_Lines_From_File(lst_lines):
	lst_app_libraries  = []
	for line in lst_lines:
		if line.startswith('import'): #in line and not '#' in line:
			lst_items = line.replace('import ', '').replace('\n','').replace(' ','').replace('#','').split(',')
			lst_app_libraries.extend(lst_items)
			# cprint(lst_items, 'cyan')

		if line.startswith('from'):
			lst_items = line.replace('from ', '').replace('\n','').split(',')
			# cprint(lst_items,'yellow')
			for item in lst_items: 
				if item.__contains__('import'):
					# cprint(item.split(' import ')[0], 'blue')
					lst_app_libraries.append(item.split(' import ')[0].replace(' ', '').replace('#',''))
	return lst_app_libraries

os.system('clear')
element='import'
lst_all_app_libraries  = []
for file in os.listdir():
	if file.endswith('py'):
		# cprint(file, 'green')
		file1 = open(file, 'r')
		Lines = file1.readlines()
		lst_all_app_libraries.extend(Extract_Import_Lines_From_File(Lines))
lst_all_app_libraries = unique(lst_all_app_libraries)

unwanted = ['cprint', 'Web3', 'EthereumTesterProvider', 'Android_App', 'Apps_Download', 'Blockchain', 'ClassesimportLogcat', 'Copy_Files_For_Testing', 'Classes', 'Helper', 'Get_App_Names', 'Instrument_Apps_Gold_V2', 'MADScanner', 'StateMachine', 'Android_App']
for ele in sorted(unwanted, reverse = True): 

	lst_all_app_libraries = np.delete(lst_all_app_libraries, np.where(lst_all_app_libraries == ele))
lst_all_app_libraries = list(lst_all_app_libraries)
lst_all_app_libraries = sorted(lst_all_app_libraries, key=str.lower)

for lib in lst_all_app_libraries:
	if not '.' in lib:
		print(lib)