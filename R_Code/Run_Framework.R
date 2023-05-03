# Load required libraries
requiredPackages <- c("readr", "purrr", "stringr", "tm", "arrow", 
                      "tidyverse", "textmineR","cooccur", "birankr", "ngram", 
                      "quanteda", "quanteda.textstats", "text2vec", "tidytext")
ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}
ipak(requiredPackages)
remove(requiredPackages, ipak)
app_name="angrybirdsrio.apk"

# Create methods for framework to run
Get_Version_From_App <- function(app_name){
  cmd = paste('aapt dump badging ../../APK/',app_name, ' | grep package', sep='')
  app_version=system(cmd, intern = TRUE)
  app_version=unlist(strsplit(app_version, " "))
  app_version=app_version[7]
  app_version=str_replace(app_version,"compileSdkVersion=","")
  app_version=str_replace_all(app_version,"'","")
  return(app_version)
}
Get_Main_Activity_From_App <- function(app_name){
  cmd = paste('aapt dump badging ../../APK/',app_name, ' | grep launchable-activity', sep='')
  main_activity=system(cmd, intern = TRUE)
  main_activity=unlist(strsplit(main_activity, " "))
  main_activity=main_activity[2]
  main_activity=str_replace(main_activity,"name=","")
  main_activity=str_replace_all(main_activity,"'","")
  return(main_activity)
}
Get_Package_From_App <- function(app_name){
  cmd = paste('aapt dump badging ../../APK/',app_name,' | grep "package"', sep='')  
  package=system(cmd, intern = TRUE)
  package=unlist(strsplit(package, " "))
  package=package[2]
  package=str_replace(package,"name=","")
  package=str_replace_all(package,"'","")
  return(package)
}
Create_Dataframe_From_Files <- function(){
  files <- list.files("../../APK")
  indices_to_remove <- grep("idsig", files)
  files <- files[-indices_to_remove]
  df=data.frame("file_names"=c(files))
  df$main_activity <- apply(df["file_names"], 1, Get_Main_Activity_From_App)
  df$package <- apply(df["file_names"], 1, Get_Package_From_App)
  df$CompileSdkVersion <- apply(df["file_names"], 1, Get_Version_From_App)
  return(df)
}
Compile_Framework <- function(){
  cmd = paste("javac -d Classes -cp '../Jar_Libs/*' *.java Conditions/*.java Soot/*.java Logging/Logging.java FileWriter/*.java FileParser/*.java FileHandler/*.java Constants/*.java ClassHelper/*.java Utils/*.java")
  system(cmd)
}
Run_Framework <- function(app_name){
  main_activity<<-Get_Main_Activity_From_App(app_name)
  cmd<<-paste("java -cp .:../../Jar_Libs/* SootTest ",app_name,main_activity," --output-format j")
  system(cmd)
}
Zip_Sign_And_Install_APK() <- function(app_name){
  cmd<<-paste("")
  system(cmd)
}
Run_App_On_Emulator<- function(app_name){
  cmd = ""
  system(cmd)
}
setwd("~/Desktop/MADScannerFinalGoldV2/Java/Classes")
df = Create_Dataframe_From_Files()
setwd("~/Desktop/MADScannerFinalGoldV2/Java")
Compile_Framework()
setwd("~/Desktop/MADScannerFinalGoldV2/Java/Classes")
Run_Framework("TestApp3.apk")
