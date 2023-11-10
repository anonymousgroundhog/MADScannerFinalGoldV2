import os, subprocess

def Compile_Framework_Code():
	cwd=os.getcwd()
	os.chdir('../Java/')
	os.system('rm -rf Classes/sootOutput')
	os.system('javac -d Classes -cp "../Jar_Libs/*" MyTransform.java BAnalysisApp.java SootExample.java SootTest3.java SootInstrumentationHelper.java Once.java SootUtil.java ClassLiteralMethodSourceonInit.java')
	os.chdir(cwd)

def list_directories(path):
    return [d for d in os.listdir(path) if os.path.isdir(os.path.join(path, d))]

def Function_Get_MainActivity_And_Write_To_File(file, folder):
	path=''.join(['../APK/',folder,'/',file])
	main_activity=subprocess.run(['aapt', 'dump', 'badging', path], stdout=subprocess.PIPE)
	main_activity=main_activity.stdout.decode('utf-8').split('\n')
	main_activity = [item for item in main_activity if "launchable-activity" in item]
	main_activity = main_activity[0].replace("launchable-activity: ","").split(" ")[0].replace("name=","").replace("'","")
	# print(main_activity)

	main_class=subprocess.run(['aapt', 'dump', 'badging', path], stdout=subprocess.PIPE)
	main_class=main_class.stdout.decode('utf-8').split('\n')
	main_class = [item for item in main_class if "package" in item]
	main_class = main_class[0].replace("package: ","").split(" ")[0].replace("name=","").replace("'","")
	
	# Open a file in write mode ('w')
	with open('APK_Details.txt', 'w') as file:
	    # Write text to the file
	    file.write(''.join(["Main_Activity: ",main_activity,"\n"]))
	    file.write(''.join(["Main_Class: ",main_class]))

	
def Function_Run_Framework_And_Zip_And_Sign_APK(file, folder, option):
	pwd=os.getcwd()
	os.chdir("Classes")
	SignedFile=''.join(['signed',file])
	APKPath=''.join(["../../APK/",folder,'/',file])
	print("APK path is: ", APKPath)
	print("Current directory is: ", os.getcwd())
	path=''.join(['../../APK/',folder,'/',file])
	sdkbuild_version=subprocess.run(['aapt', 'dump', 'badging', path], stdout=subprocess.PIPE)
	sdkbuild_version=sdkbuild_version.stdout.decode('utf-8').split('\n')
	sdkbuild_version = [item for item in sdkbuild_version if "platformBuildVersionCode=" in item]
	sdkbuild_version = sdkbuild_version[0].replace("package: ","").split(" ")[5].replace("compileSdkVersion=","").replace("'","")
	
	# sdkbuild_version=$(aapt dump badging $APKPath | grep compileSdkVersion | cut -d ' ' -f 6 | tr -d "platformBuildVersionCode='")
	print("sdkBuild Version: ", sdkbuild_version)

	os.chdir(pwd)

os.system('rm ../Java/Classes/sootOutput/*')
os.system('rm ../Java/APK_Files_Signed_And_Injected_Logs/*')
Compile_Framework_Code()

Test_Folder="Testing"
option="apk"
os.chdir('../Java')
print(os.getcwd())
for file in os.listdir(''.join(['../APK/',Test_Folder])):
	print("File:",file)
	Function_Get_MainActivity_And_Write_To_File(file, Test_Folder)
	Function_Run_Framework_And_Zip_And_Sign_APK(file, Test_Folder, option)