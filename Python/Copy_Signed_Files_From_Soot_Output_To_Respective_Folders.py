import os, shutil
from termcolor import colored, cprint

cwd= os.getcwd()
os.chdir('../Java/Classes')

for file in os.listdir('sootOutput'):
	# file_name=file
	folder=file.replace('signed','')

	try:
		os.mkdir(folder)
	except Exception:
	    pass

	src='/'.join(['sootOutput',file])
	dst='/'.join([folder,file])

	print(src)
	print(dst)
	shutil.copyfile(src, dst)
shutil.rmtree('sootOutput')