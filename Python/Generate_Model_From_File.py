import os, numpy as np, graphviz, more_itertools, pydot
from termcolor import colored, cprint
from graphviz import Digraph

def Generate_Model_From_List(this_model_name, this_list_of_states):
	digraph = Digraph('G', engine='neato', comment=this_model_name, format='png')
	digraph.node('appstarted', 'The app has started', pos='0,5!')
	digraph.node('appstarted_adview_set', 'The app has started and an adView was set', pos='0,4!')
	digraph.node('appstarted_no_ads', 'The app has started with no Ads displayed', pos='0,3!')
	digraph.node('apprunning_ad_loaded', 'The app is running and the advertisement is loaded', pos='0,2!')
	digraph.node('appstarted_with_ads', 'The app has started with ads displayed', pos='0,1!')
	digraph.node('apprunning_ad_impression', 'The app is running and the advertisement impression is made', pos='10,0!')
	digraph.node('apprunning_ad_engagement', 'The app is running and the advertisement engagement is made', pos='10,2!')
	digraph.attr(label=this_model_name)
	# print()
	for states in list(more_itertools.windowed(this_list_of_states,2)):
		print(states)
		if states[1] == None:
			digraph.edge(states[0], states[0], constraint='false')
		else:
			digraph.edge(states[0], states[1], constraint='false')
	digraph.render('../Data/FSM_Models/'+this_model_name)
	# digraph.view()

def unique(list1):
	x = np.array(list1)
	return np.unique(x).tolist()

def Return_States_Based_On_Transitions(this_transition_list):
	lst_states=[]
	if len(this_transition_list) > 0:
		for idx,transition in enumerate(this_transition_list):
			transition=str(transition).replace(' ', '').split('->')
			if(transition[0] == 'attachInfo' and transition[1] == 'attachInfo') or (transition[0] == 'attachInfo' and transition[1] == 'build'):
				lst_states.append('appstarted')
			if (transition[0] == 'attachInfo' and transition[1] == 'build') or (transition[0] == 'build' and transition[1] == 'build'):
				lst_states.append('appstarted_adview_set')
			if (transition[0] == 'build' and transition[1] == 'initialize') or (transition[0] == 'initialize' and transition[1] == 'initialize'):
				lst_states.append('appstarted_no_ads')
			if (transition[0] == 'initialize' and transition[1] == 'onAdLoaded') or (transition[0] == 'onAdLoaded' and transition[1] == 'onAdLoaded'):
				lst_states.append('apprunning_ad_loaded')
			if (transition[0] == 'onAdLoaded' and transition[1] == 'onResume') or (transition[0] == 'onResume' and transition[1] == 'onResume'):
				lst_states.append('apprunning_ad_impression')
			if (transition[0] == 'onResume' and transition[1] == 'onPause') or (transition[0] == 'onPause' and transition[1] == 'onPause'):
				lst_states.append('apprunning_ad_engagement')
			if (transition[0] == 'onAdLoaded' and transition[1] == 'onAdImpression'):
				lst_states.append('The app has started with Ads displayed')
		return lst_states

this_path='../Data/App_Transitions.txt'

os.system('clear')

lst_app_names=[]
lst_transitions=[]

lst_app_name=''
index_val=''
with open(this_path) as file:
	lines = [line.rstrip() for line in file]
	for idx,line in enumerate(lines):
		if line.__contains__('True'):
			lst_app_names.append(lst_app_name)
			transition=lines[idx-1]
			lst_transitions.append(transition)
			# cprint(transition, 'green')
		elif not line.__contains__('->') and not line.__contains__('False') and not line.strip().__contains__('\n'):
			lst_app_name=line
			if len(lst_transitions) > 1:
				cprint('\nApp Name:'+str(lines[index_val]),'yellow')
				cprint(unique(lst_transitions), 'yellow')
				this_states=Return_States_Based_On_Transitions(unique(lst_transitions))
				cprint('states:'+str(this_states), 'yellow')
				Generate_Model_From_List(str(lines[index_val]),this_states)
			lst_transitions=[]
			index_val=idx
			# cprint(line+' '+str(idx), 'white')