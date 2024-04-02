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

	words=['undetected', 'unable', 'summary', 'timeout', 'join', 'api', '?']

	for file in os.listdir():
		if not file == 'errors.txt':
			reader = PdfReader(file)
			cprint(file.replace('.pdf',''), 'green')
			non_malicious_files.append(file.replace('.pdf', ''))
			for page in reader.pages:
				content = page.extract_text()
				text_lower = content.lower()
				# print(text_lower.split('\n'))
				for line in text_lower.split('\n'):
					# lst_line = line.split()
					if not any(word in line for word in words) and len(line.split()) > 1:
						cprint('\t'+line, 'white')
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

	cprint('\n\nMalicious files are:', 'white')
	cprint('\n'.join(malicious_files), 'red')

	cprint('\n\nFiles not Detected:', 'white')
	cprint('\n'.join(undetected_files), 'yellow')
	
	cprint('\n\nNormal files are:', 'white')
	cprint('\n'.join(non_malicious_files), 'green')
	os.chdir(pwd)

os.system('clear')

# df = pd.read_csv('../Data/App_VirusTotal_Details.csv')

# Get_Data_From_VirusTotal_Based_On_List(['0aae249e7afa30356215d47dfea21841d162d48b97e7049184543f25fb603e15', '8178945c7075d84bf32c7210230d52a282ab99945b53bc53737b5235bf1cef0a', 'f399b3803986bd5c2e1a4ea160472395a72d15a16cb1af34110d7542517b6cb9', '826b0aee01a5f60eceacc29f8dcb3a776f6088b834ee0e66313138cff2d289e0', 'e176b1e1402c26f2d027f89ed880b6c8f610c9ad5136fa024e982c8ad9276baf', 'b5f7e4863d84aa4103f4332249b07f413cba4cb82565ce241d8078f04f244ac1', '0ad3d1fbca331322fe5a7b5047d5f65da6766a077cf8cbcb5328a1e880962bd8', '1b98a233d95defafe80dc3bb6f14e8cfa445a3e65cc220bb7c10ea3a7fdedcd0', '82fa87f15e8d7f0d4d1cc7d7abf4e339eade7f2321ba8d90dcd28cab20b5aa5d', 'a0390abf01aa0b310e9f5da59386596e5d91809322866974455493918dfdd05f', '15efb6f40b69f3fc9c53c94dca8198f4707e1a6366be8cf141d90060c599f756', 'fc589cb851fec04627732c7474a4c0a7c9e923f3a8a092ca9b798f987ecf17a0', 'a1331951ccb407cc2fd4ab3a4056c2eef3b36152e878838f794776f5228c754e', 'c01bf20d4185ebf0bfd638aec8ddb621b95aa684de2b09f83d3bcf73c8149f6e', 'e285d19234e19694df63666f17c24d1ef49df5add6c7103282bb97f1f5770126', '66ae9257e53bc72e0530b2a6afbbce0c8c66b7bbbf7b640a503e235bf06dcb6d', 'aa412475be074096e8638e06c073c55d6696ff177f8c0b0a64770c69c688d94a', '4171a34b3c6c63c8c39e62537eef7fc9113f7af3a6f65d03522eb25298cd6480', '981b5c02532f2fc3d3cec2632188d08198114f83ec2e7960f53d1880f836b0e9', 'c320e546fe41b6b4bd7edc8c611faaa5ebda21a2145968e31ae6019231f3a9fe', '7a7e98a0cfd17f27266b3256b0d975070de564c03b900e2a80d2ea293e0a320e', 'ebcce3dc547d03e472405fe521a2a58533361004e875053d03e7150c07b82d6f', '8e642d75c3d6e3a1bf2374981b347369746902c52b9617f3b854eec3cdefa784', '315a1b2bf30b96fec19ff181451958f0543c548492a320483c23ea7f91e55bcf', '7cf41d2cff0b997f71dd57ff05e41b6400a91c4fda08d3b275a4b56cf90fcb1a', 'b4173228ac21dfb59e5c080eea32ec97542e7b8fdda88d6524846ca782034cef', '266d91bbffcaf82fa04593b6434530d322a2ed0a1529943c288026953e1bc23e', 'dfdd8b1fab12bec7fa8da314ed2e2dfd6c97c2adb3e62949f7b450ee8c8ebbaf', '164605c201e064850bb777b8a49d51da99c006092182e94f184c92ad8bc687f9', '845b6194903b5a1f6d54180efb9491da1a51eea43fdfc284b68dbee87fffd29a'])
# Remove_Files_With_Capcha()
# Get_Data_From_VirusTotal(df)
Analyze_PDF_Files()

