import os, time, json, pandas as pd, traceback, re 
from selenium.webdriver.common.by import By


from selenium import webdriver
from selenium.webdriver.firefox.options import Options
from termcolor import colored, cprint
from pypdf import PdfReader




# hash_value='41843f057fcb56c8faeadb0874ad75d451bfdd6c56c8646befc200e9abb6dc79'
# url = ''.join([url_base, hash_value])

# appState = {
#     "recentDestinations": [
#         {
#             "id": "Save as PDF",
#             "origin": "local",
#             "account": ""
#         }
#     ],
#     "selectedDestinationId": "Save as PDF",
#     "version": 2
# }

# profile = {'printing.print_preview_sticky_settings.appState': json.dumps(appState),
#            'savefile.default_directory': 'path/to/dir/'}

# chrome_options = webdriver.ChromeOptions()
# chrome_options.add_experimental_option('prefs', profile)
# chrome_options.add_argument("--start-maximized")
# chrome_options.add_argument('--kiosk-printing')
# driver = webdriver.Chrome(options=chrome_options)
# # driver.set_window_size(1600,800)
# driver.get(url)
# time.sleep(3)
# driver.execute_script('window.print();')

from pyhtml2pdf import converter
Files_To_Check_Captcha = []

def Get_Data_From_VirusTotal(df):
	pwd=os.getcwd()
	os.chdir('../Data/VirusTotal_Screenshots')
	url_base='https://www.virustotal.com/gui/file/'
	for hash_value in df['App_Hashes']:
		url = ''.join([url_base, hash_value,'/detection'])
		file_name = ''.join([hash_value,'.pdf'])
		cprint(hash_value, 'green')
		if not file_name in os.listdir():
			try:
				converter.convert(url, file_name)
				Files_To_Check_Captcha.append(file_name)
			except:
				f = open("errors.txt", "a")
				f.write(file_name+'\n')
				f.close()
				cprint(''.join(["Unable to Run framework for:", hash_value]), 'red')
				print(traceback.format_exc())
				continue
	os.chdir(pwd)

def Remove_Files_With_Capcha():
	pwd=os.getcwd()
	os.chdir('../Data/VirusTotal_Screenshots')
	for file in os.listdir():
		try:
			# if file in Files_To_Check_Captcha and not file == 'error.txt':
			if not file == 'error.txt':
				reader = PdfReader(file) 
				# creating a page object 
				page = reader.pages[0] 
				
				cprint(file, 'green')
				# extracting text from page 
				cprint(page.extract_text())
				page_text = page.extract_text()
				if page_text.__contains__('reCAPTCHAI') or page_text.__contains__('recaptcha'):
					os.remove(file)
		except: 
			cprint(''.join(["Unable to Run framework for:", file]), 'red')
			print(traceback.format_exc())
	os.chdir(pwd)

def Analyze_PDF_Files():
	pwd=os.getcwd()
	os.chdir('../Data/VirusTotal_Screenshots')

	words=['undetected', 'unable', 'summary', 'timeout', 'join', 'api', '?']

	for file in os.listdir():
		if not file == 'errors.txt':
			reader = PdfReader(file)
			cprint(file, 'green')
			for page in reader.pages:
				content = page.extract_text()
				text_lower = content.lower()
				# print(text_lower.split('\n'))
				for line in text_lower.split('\n'):
					# lst_line = line.split()
					if not any(word in line for word in words):
						print(line)
	os.chdir(pwd)

os.system('clear')

df = pd.read_csv('../Data/App_VirusTotal_Details.csv')

Get_Data_From_VirusTotal(df)
Remove_Files_With_Capcha()
# Analyze_PDF_Files()