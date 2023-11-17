import os, pandas as pd, traceback, graphviz, numpy as np, StateMachine, Helper
from termcolor import colored, cprint

class Generate_Model:

	def __init__(self):
		self.fsm_path = '../Data/FSM_Models';
		self.log_details_path = '../Data/Logs';
		self.full_file_paths_logs = []
		self.app_name_list = []
		self.app_hash_list = []
		self.app_class_list = []
		self.app_method_list = []
		self.app_ad_id_list = []
		self.df = ''
		self.filtered_df = ''
		self.unique_apps = []
	
	def Set_Log_Details_Path(self, this_path):
		self.log_details_path = this_path

	def Set_File_Paths(self):
		try:
			for file in os.listdir(self.log_details_path):
			    path="".join([self.log_details_path,'/',file])
			    self.full_file_paths_logs.append(path)
		except:
			cprint(''.join(['Error in Set_File_Paths for ',self.log_details_path]), 'red')
			print(traceback.format_exc())


	def Print_Details(self):
		cprint(self.filtered_df,'green')
		# cprint(self.app_hash_list,'green')

	def Open_File_And_Generate_Dataframe(self):
		helper = Helper.Helper()
		lines=[]
		for this_path in self.full_file_paths_logs:
			with open(this_path) as file:
				lines = [line.rstrip() for line in file]
				while lines[0].__contains__("---------") and len(lines) > 1:
					del lines[0]
				print("\n\nLines are: ",len(lines), ' for ', this_path)
				if len(lines) > 1:
					cprint("True", 'green')

		for item in lines:
			content = item.split(":")
			content_to_manipulate=content.pop()
			content_to_manipulate_list = content_to_manipulate.split("---")
			print(content_to_manipulate_list)
			if len(content_to_manipulate_list) > 4:
				self.app_name_list.append(content_to_manipulate_list[0])
				self.app_hash_list.append(content_to_manipulate_list[1])
				self.app_class_list.append(content_to_manipulate_list[2])
				self.app_method_list.append(content_to_manipulate_list[3])
				self.app_ad_id_list.append(content_to_manipulate_list[4])
		
		data = {
			'App_Name': self.app_name_list,
			'App_Hash': self.app_hash_list,
			'App_Class': self.app_class_list,
			'App_Method': self.app_method_list,
			'App_Ad_ID': self.app_ad_id_list
		}
		self.df = pd.DataFrame(data)

	def Generate_Unique_Apps_List(self):
		self.filtered_df = self.df.query( 'App_Method == ["setContentView", "setAdListener", "initialize", "onAdImpression", "onAdClicked", "onAdLoaded", "onAdClosed"]' )
		# print(filtered_df)
		self.unique_apps=pd.unique(self.filtered_df[['App_Name']].values.ravel())
		print(self.unique_apps)

	def Generate_Transitions(self):
		cwd = os.getcwd()
		helper = Helper.Helper()
		for app_name in self.unique_apps:
			cprint("\nApp Name:" + app_name, 'green')
			rslt_df = self.filtered_df[self.filtered_df['App_Name'] == app_name]
			# print(rslt_df)
			transitions=rslt_df[['App_Method', 'App_Ad_ID']]

			transitions = transitions.loc[~((transitions['App_Ad_ID'] == 'null') & ((transitions['App_Method'] == 'onAdLoaded') | 
			                                                                (transitions['App_Method'] == 'onAdImpression')| 
			                                                                (transitions['App_Method'] == 'onAdClicked')))]

			transitions['Graph'] = np.nan
			transitions = transitions.reset_index(drop=True)
			set_setContentView = set(np.where(transitions.App_Method == 'setContentView')[0])
			set_setAdListener = set(np.where(transitions.App_Method == 'setAdListener')[0])
			set_initialize = set(np.where(transitions.App_Method == 'initialize')[0])


			counter1 = 0
			for loc in sorted(set_setContentView):
				counter1=counter1+1
				transitions.at[loc,'Graph'] = counter1

			set_empty = set(np.where(pd.isna(transitions['Graph']))[0])
			counter2 = 0
			for loc in sorted(set_empty):
				loc2=loc-1
				col_list = transitions["Graph"].values.tolist()
				# print('length:', transitions[transitions.columns[0]].count())
				if transitions[transitions.columns[0]].count() == 1:
				    counter2 = counter2 + 1
				    transitions.at[loc,'Graph'] = counter2
				elif col_list[loc2] != np.nan:
				    # print("Prev Val ",col_list[loc2])
				    transitions.at[loc,'Graph'] = col_list[loc2]
				else:
				    # print("Prev Val ",col_list[loc2])
				    counter2 = counter2 + 1
				    transitions.at[loc,'Graph'] = counter2

			print(transitions)

			# Set states and add new graph for each
			print("Unique graph numbers:",transitions['Graph'].unique())
			# os.chdir(self.fsm_path)
			for graph in transitions['Graph'].unique():
				print("Graph: ", graph)
				state_machine = StateMachine.StateMachine()
				state_machine.add_title("App Testing"+str(graph))
				state_machine.add_states()
				rslt_df = transitions[transitions['Graph'] == graph]
				this_transitions=list(helper.sliding_window_iter(rslt_df['App_Method'], 2))
				this_advertisement_id=list(helper.sliding_window_iter(rslt_df['App_Ad_ID'], 2))
				print(rslt_df)
				print(this_transitions)
				print(this_advertisement_id)
				for trans in this_transitions:
					print(trans[0], " ",trans[1])
					trans_determ = state_machine.determine_transition(trans)
					if(trans_determ != None):
						print("Trans:"+str(trans_determ))
						state_machine.add_dot_edge(trans_determ[0], trans_determ[1], trans_determ[2])
				print(state_machine.digraph)
			print(os.getcwd())

			state_machine.save_as_pdf(app_name+"_"+str(graph))
			os.chdir(cwd)
		os.chdir(cwd)
generate_model = Generate_Model()
generate_model.Set_File_Paths()
print(generate_model.full_file_paths_logs)
generate_model.Open_File_And_Generate_Dataframe()
generate_model.Generate_Unique_Apps_List()
generate_model.Generate_Transitions()
generate_model.Print_Details()