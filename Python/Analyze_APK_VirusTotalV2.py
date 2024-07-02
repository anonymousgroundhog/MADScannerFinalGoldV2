import os, time, json, pandas as pd, traceback, re 
from selenium.webdriver.common.by import By


from selenium import webdriver
from selenium.webdriver.firefox.options import Options
from termcolor import colored, cprint
from pypdf import PdfReader


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

def Get_Data_From_VirusTotal_Based_On_List(lst_hashes):
	pwd=os.getcwd()
	os.chdir('../Data/VirusTotal_Screenshots')
	url_base='https://www.virustotal.com/gui/file/'
	for hash_value in lst_hashes:
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
	non_malicious_files = []
	malicious_files = []
	undetected_files = []
	pwd=os.getcwd()
	os.chdir('../Data/VirusTotal_Screenshots')
	df = pd.DataFrame(columns=['Hash', 'vt_detection', 'vt_labels'])
	words=['recaptcha', 'help', 'try a new search', 'undetected', 'unable', 'summary', 'timeout', 'join', 'api', '?', 'updated privacy notice and terms of use.accept terms', 'of use']
	lst_hashes=[]
	lst_vt_detections=[]
	lst_vt_lables=[]

	for file in os.listdir():
		if not file == 'errors.txt':
			reader = PdfReader(file)
			app_name=file.replace('.pdf','')
			vt_detection=[]
			cprint(app_name, 'green')
			lst_hashes.append(app_name)
			non_malicious_files.append(file.replace('.pdf', ''))
			for page in reader.pages:
				content = page.extract_text()
				text_lower = content.lower()
				# print(text_lower.split('\n'))
				for line in text_lower.split('\n'):
					# lst_line = line.split()
					if not any(word in line for word in words) and len(line.split()) > 1:
						cprint('\t'+line, 'cyan')
						if not 'item' in line:
							vt_detection.append(line)
						if 'android' in line:
							malicious_files.append(file.replace('.pdf', ''))
							non_malicious_files.pop()
							cprint(line, 'red')
						elif 'item' in line:
							cprint(line, 'yellow')
							non_malicious_files.pop()
							undetected_files.append(file.replace('.pdf', ''))
						# else:
						# 	non_malicious_files.append(file.replace('.pdf', ''))
			vt_detection=str(vt_detection).replace(']','').replace('[','')
			lst_vt_lables.append(vt_detection)
			
			# print(vt_detection)
			if vt_detection.split(',')[0] != '':
				lst_vt_detections.append(len(vt_detection.split(',')))
				print(len(vt_detection.split(',')))
			else:
				lst_vt_detections.append(0)
	cprint('\n\nMalicious files are:', 'white')
	cprint('\n'.join(malicious_files), 'red')

	cprint('\n\nFiles not Detected:', 'white')
	cprint('\n'.join(undetected_files), 'yellow')
	
	cprint('\n\nNormal files are:', 'white')
	cprint('\n'.join(non_malicious_files), 'green')

	df['Hash']=lst_hashes
	df['vt_detection']=lst_vt_detections
	df['vt_labels']=lst_vt_lables

	print(df)
	# os.chdir('../Data/VirusTotal_Screenshots')
	df.to_csv('detections.csv', index=False)
	os.chdir(pwd)

os.system('clear')

# df = pd.read_csv('../Data/App_VirusTotal_Details.csv')

# Get_Data_From_VirusTotal_Based_On_List(['e811f04491b9a7859602f8fad9165d1df7127696cc03418ffb5c8ca0914c64da','f4da643b2b9a310fdc1cc7a3cbaee83e106a0d654119fddc608a4b587c5552a3'])
# Remove_Files_With_Capcha()
# Get_Data_From_VirusTotal(df)
Analyze_PDF_Files()

