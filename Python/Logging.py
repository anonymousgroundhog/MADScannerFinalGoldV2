import os, pandas as pd, json

Logcat_Folder = "../ADB_Logcat_Logs/"
class Logcat:
    def __init__(self, strdir):
        self.dataframe = None
        self.directory_location = strdir

    def __str__(self):
        return f"\ndataframe:{self.dataframe}"

    def Return_Nth_Element_List(self, this_list, elem_num):
        return ((this_list[elem_num:elem_num+1]+[elem_num])[0])

    def Determine_State(self, transition_1, transition_2):
        statesdict={
        'appstart':'the app has started',
        'appstartnoads':'the app has started with no ads displayed',
        'adviewset':'the app has started and an adview was set',
        'adregistered':'the app is running and the advertisement is registered',
        'adloaded':'the app is running and the advertisement is loaded',
        'addisplayed':'the app is running and the advertisement is displayed',
        'adimpression':'the app is running and the advertisement impression is made',
        }
        transition = str(transition_1)+"-"+str(transition_2) 
        if transition == "onCreate-onCreate":
            return statesdict['appstart']
            #return("The app has started")
        if transition == "onCreate-findViewById":
            return statesdict['appstartnoads']
            #return("The app has started with no Ads Displayed")
        if transition == "findViewById-findViewById":
            return statesdict['appstartnoads']
            #return("The app has started with no Ads Displayed")
        if transition == "findViewById-setContentView":
            return statesdict['adviewset']
            #return("The app has started and an adView was set")
        if transition == "setContentView-setContentView":
            return statesdict['adviewset']
            #return("The app has started and an adView was set")
        if transition == "setContentView-MobileAds.initialize":
            return statesdict['adregistered']
            #return("The app is running and the advertisement is registered")
        if transition == "initialize-initialize":
            return statesdict['adregistered']
            #return("The app is running and the advertisement is registered")
        if transition == "initialize-loadAd":
            return statesdict['adloaded']
            #return("The app is running and the advertisement is loaded")
        if transition == "loadAd-loadAd":
            return statesdict['adloaded']
            #return("The app is running and the advertisement is loaded")
        if transition == "loadAd-showAd":
            return statesdict['addisplayed']
            #return("The app is running and the advertisement is displayed")
        if transition == "loadAd-destroy":
            return statesdict['adviewset']
            #return("The app has started with no Ads displayed")
        if transition == "showAd-showAd":
            return statesdict['adloaded']
            #return("The app is running and the advertisement is displayed")
        if transition == "showAd-destroy":
            return statesdict['appstartnoads']
            #return("loadAdThe app has started with no Ads displayed")
        if transition == "showAd-onClick":
            return statesdict['addisplayed']
            #return("The app is running and the advertisement impression is made")


    def Run_Logcat_Analysis(self):
        dates = []
        apps = []
        hashes = []
        methods = []
        units = []
        memory_locations = []
        for log in os.listdir(self.directory_location):
            file = open(self.directory_location+'/'+log, 'r')
            Lines = file.readlines()
            count = 0
            for line in Lines:
                count += 1
                line_formatted = line.strip().split("FiniteState:")
                date_time_stamp = self.Return_Nth_Element_List(line_formatted,0).split(" ")
                date_time_stamp = date_time_stamp[0] + " " + date_time_stamp[1]

                if '----' not in date_time_stamp:
                    line_details_method_specific = str(line_formatted[1::1]).replace("[","").replace("]","").replace("'","").replace("  ","")
                    hashes.append(line_details_method_specific.split("::")[1])
                    method = line_details_method_specific.split("::")
                    method = self.Return_Nth_Element_List(method,2)
                    if str(method).__contains__("initialize"):
                        method = method.split(':')
                        method = method[0]
                    unit = line_details_method_specific.split("::")
                    if len(unit) < 4:
                        unit = unit[2]
                        unit = unit.replace("initialize:","")
                    else:
                        unit = unit[3]
                    unit =unit.split("---")
                    unit = unit[0]
                    mem = line_details_method_specific.split("---")
                    mem = mem.pop()
                    app_name = self.Return_Nth_Element_List(line_details_method_specific.split("::"),0).replace(".apk","") 

                    dates.append(date_time_stamp)
                    apps.append(app_name.replace(" ", ""))
                    methods.append(method)
                    units.append(unit)
                    memory_locations.append(str(mem).replace("Memory Location of","").replace("is","="))
        self.dataframe = pd.DataFrame({'dates' : dates, 'apps' : apps, 'hashes': hashes, 'methods' : methods, 'units' :  units, 'memory_locations' : memory_locations})

this_logcat = Logcat(Logcat_Folder) 
this_logcat.Run_Logcat_Analysis()
print(this_logcat.dataframe)
