import os, pandas as pd, graphviz, numpy as np, StateMachine, Helper
from graphviz import Digraph
from termcolor import colored, cprint

class Generate_Model_From_Logs_Gold_V2:
	def __init__(self):
		self.logs_path = '';
		self.df = '';
		self.list_valid_methods = [];
		self.filtered_df = '';

	def Set_Logs_Path(self, this_path):
		self.logs_path = this_path

	def Set_List_Valid_Methods(self, methods_list):
		self.list_valid_methods = methods_list

	def Generate_Dataframe_From_Logs(self):
		if os.path.isdir(self.logs_path):
			app_name_list = []
			app_hash_list = []
			app_class_list = []
			app_method_list = []
			app_ad_id_list = []
			for file in os.listdir(self.logs_path):
				path = ''.join([self.logs_path, file])
				with open(path) as file:
				    lines = [line.rstrip() for line in file]
				    # print("\n\nLines are: "+str(lines))
				    while lines[0].__contains__("---------") and len(lines) > 1:
				        del lines[0]

				for item in lines:
				    content = item.split(":")
				    content_to_manipulate=content.pop()
				    content_to_manipulate_list = content_to_manipulate.split("---")
				    # print(content_to_manipulate_list) 
				    if len(content_to_manipulate_list) > 4:
				        # print('Appending')  
				        app_name_list.append(content_to_manipulate_list[0])
				        app_hash_list.append(content_to_manipulate_list[1])
				        app_class_list.append(content_to_manipulate_list[2])
				        app_method_list.append(content_to_manipulate_list[3])
				        app_ad_id_list.append(content_to_manipulate_list[4])
			data = {
			    'App_Name': app_name_list,
			    'App_Hash': app_hash_list,
			    'App_Class': app_class_list,
			    'App_Method':app_method_list,
			    'App_Ad_ID':app_ad_id_list
			}
			self.df = pd.DataFrame(data)
		else:
			cprint('Not a valid path!!!', 'red')

	def Label_Dataframe_Rows(self):
		if len(self.df) > 1:
			labels = []
			for index, row in self.df.iterrows():
			    labels.append(row['App_Class'].split('.')[1])
			self.df['App_Label'] = labels
		else:
			cprint('Error, Unable to Process Empty DataFrame!!!', 'red') 

	def Generate_Transitions_From_List(self, this_list, this_label):
		helper = Helper.Helper()

		print(list(helper.sliding_window_iter(this_list,2)))

	def Filter_On_Valid_Methods(self, this_list):
		filtered_words =[item for item in this_list if item in self.list_valid_methods]
		# print(filtered_words)
		return filtered_words

	def Generate_Unique_Method_Calls_For_Each_App(self):
		helper = Helper.Helper()
		self.unique_apps=self.df['App_Name'].unique()
		print(os.getcwd())
		words_to_filter_on = helper.Read_File_And_Return_Lines('Keywords_To_Investigate/keywords_to_investigate.txt')
		for app in self.unique_apps:
			cprint(''.join(['\n\t',app, '\n']), 'cyan')
			Apps_Filtered = self.df['App_Name'] == app
			app_details_df = self.df[Apps_Filtered]
			unique_rows = app_details_df.drop_duplicates()
			unique_rows = helper.Drop_Dataframe_Rows(unique_rows,['App_Hash', 'App_Name'])
			unique_rows = unique_rows[~unique_rows['App_Method'].str.startswith('zz')]
			unique_rows = unique_rows[~unique_rows['App_Method'].str.startswith('access')]

			# INSTRUMENT FILE AND RETURN BASED ON DATA
			for word in words_to_filter_on:
				unique_rows = helper.Filter_Dataframe_By_Keyword(unique_rows, 'App_Label', word)
				unique_rows2 = helper.Drop_Dataframe_Rows(unique_rows,['App_Class', 'App_Label'])
				if len(unique_rows2) > 0:
					print(word)
					print(unique_rows2)
					sequence_google=unique_rows2['App_Method'].to_list()
					seq_of_methods = self.Filter_On_Valid_Methods(sequence_google)
					print(seq_of_methods)
			# unique_rows_facebook = helper.Filter_Dataframe_By_Keyword(unique_rows, 'App_Label', 'facebook')
			# unique_rows_google = helper.Filter_Dataframe_By_Keyword(unique_rows, 'App_Label', 'google')

			# unique_rows_facebook = helper.Drop_Dataframe_Rows(unique_rows_facebook,['App_Class', 'App_Label'])
			# unique_rows_google = helper.Drop_Dataframe_Rows(unique_rows_google,['App_Class', 'App_Label'])
			# # unique_rows_google = unique_rows_google.drop(['App_Class', 'App_Label'], axis=1)

			# if len(unique_rows_google) > 0:
			# 	sequence_google=unique_rows_google['App_Method'].to_list()
			# 	cprint(''.join(['google:', str(sequence_google)]), 'green')
			# 	cprint(self.Filter_On_Valid_Methods(sequence_google), 'white')
			# 	# self.Generate_Transitions_From_List(sequence_google,'google')
			# if len(unique_rows_facebook) > 0:
			# 	sequence_facebook = unique_rows_facebook['App_Method'].to_list()
			# 	cprint(''.join(['\nfacebook:', str(sequence_facebook)]), 'green')
			# 	cprint(self.Filter_On_Valid_Methods(sequence_facebook), 'white')

	def Generate_Unique_Apps_List(self):
		str_methods = '","'.join(self.list_valid_methods)
		str_methods = ''.join(['[', '"', str_methods,'"', ']'])
		cprint(str_methods, 'green')
		
		str_query = ''.join(['App_Method == ', str_methods])
		# # self.filtered_df = self.df.query( 'App_Method == ["setContentView", "setAdListener", "initialize", "onAdImpression", "onAdClicked", "onAdLoaded", "onAdClosed"]' )
		self.filtered_df = self.df.query(str_query)
		# print(filtered_df)
		self.unique_apps=pd.unique(self.filtered_df[['App_Name']].values.ravel())
		print(self.unique_apps)

	def Generate_Transitions(self):
		for app_name in self.unique_apps:
			print("\nApp Name:" + app_name)
			rslt_df = self.filtered_df[self.filtered_df['App_Name'] == app_name]
			# print(rslt_df)
			transitions=rslt_df[['App_Method', 'App_Ad_ID', 'App_Label']]
			print(transitions)

os.system('clear')
model = Generate_Model_From_Logs_Gold_V2()
list_of_valid_methods = ['attachInfo', 'initialize', 'build', 'setRequestConfiguration', 'onAdLoaded', 'onStart', 'onResume', 'onUserLeaveHint', 'onPause', 'onAdClicked', 'onAdLoaded', 'onAdImpression', 'onDestroy']
# model.Set_List_Valid_Methods(['onCreate','loadad','setContentView', 'setAdListener', 'initialize', 'onAdImpression', 'onAdClicked', 'onAdLoaded', 'onAdClosed'])
model.Set_List_Valid_Methods(list_of_valid_methods)
model.Set_Logs_Path('../Data/Logs/')
model.Generate_Dataframe_From_Logs()
model.Label_Dataframe_Rows()
model.Generate_Unique_Method_Calls_For_Each_App()