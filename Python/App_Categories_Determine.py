import os, pandas as pd, hashlib

python_dir = os.getcwd()
this_folder = 'Google_Play_Collection_Bello'
df = pd.DataFrame({'App Name': [], 'App Hash': [], 'Category': []})
os.chdir(''.join(['../APK/', this_folder]))
sha256 = hashlib.sha256()
BUF_SIZE = 65536
for folder in os.listdir():
	this_category=folder
	pwd=os.getcwd()
	os.chdir(folder)
	print(folder)
	for file in os.listdir():
		app_name=file.replace('.apk', '')
		print(file)
		if os.path.isfile(file):
			with open(file, 'rb') as f:
			    while True:
			        data = f.read(BUF_SIZE)
			        if not data:
			            break
			        sha256.update(data)
		
		df.loc[len(df)] = [app_name, sha256.hexdigest(), this_category]	
	os.chdir('../')    

print(df)
os.chdir(python_dir)
df.to_csv(''.join([this_folder, '.csv']), index=False)