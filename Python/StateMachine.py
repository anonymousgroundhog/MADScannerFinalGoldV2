import graphviz, numpy as np
from graphviz import Digraph
class StateMachine:
    
    def __init__(self):
        self.title = None
        self.digraph = Digraph('G', engine='neato', comment=self.title)
        self.labelloc="t";
        self.label=self.title;
    
    def add_title(self, name):        
        self.title = name
    
    def add_states(self):
        # state_details=[['The app has started','The app has started and an adView was set','The app has started with no Ads displayed','The app is running and the advertisement is loaded'],
        #                 ['The app is running and the advertisement impression is made','The app is running and the advertisement engagement is made']]
        # state_labels=[['appstarted','appstarted_adview_set','appstarted_no_ads', 'apprunning_ad_loaded'],['apprunning_ad_impression','apprunning_ad_engagement']]
            

        self.digraph.node('appstarted', 'The app has started', pos='0,5!')
        self.digraph.node('appstarted_adview_set', 'The app has started and an adView was set', pos='0,4!')
        self.digraph.node('appstarted_no_ads', 'The app has started with no Ads displayed', pos='0,3!')
        self.digraph.node('apprunning_ad_loaded', 'The app is running and the advertisement is loaded', pos='0,2!')
        self.digraph.node('appstarted_with_ads', 'The app has started with ads displayed', pos='0,1!')
        self.digraph.node('apprunning_ad_impression', 'The app is running and the advertisement impression is made', pos='10,0!')
        self.digraph.node('apprunning_ad_engagement', 'The app is running and the advertisement engagement is made', pos='10,2!')
    
    def add_dot_node(self, label, name):
        self.digraph.node(label, name)

    def add_dot_edge(self, A, B, label_data):
        self.digraph.edge(A, B, constraint='false', label=label_data)

    def save_as_pdf(self, filename):
        self.digraph.render('../Data/FSM_Models/'+filename+'.gv', view=False)

    def determine_transition(self, this_tuple):
        match this_tuple:
            case ("setContentView","setAdListener"):
                return("appstarted", "appstarted_adview_set", 'setAdListener') 
            case ("setContentView","initialize"):
                return("appstarted", "appstarted_adview_set", 'initialize')
            case ("initialize","setAdListener"):
                return("appstarted_adview_set", "appstarted_no_ads", 'setAdListener') 
            case ("setAdListener","onAdLoaded"):
                return("appstarted_no_ads", "apprunning_ad_loaded", 'onAdLoaded')  
            case ("onAdLoaded","onAdImpression"):
                return("apprunning_ad_loaded", "apprunning_ad_impression", 'onAdImpression') 
            case ("onAdImpression","onAdClicked"):
                return("apprunning_ad_impression", "apprunning_ad_engagement", 'onAdClicked')  
            
            case ("onAdImpression","onAdClosed"):
                return("apprunning_ad_impression", "appstarted_adview_set", 'onAdClosed')
            case ("onAdLoaded","onAdClosed"):
                return("apprunning_ad_loaded", "appstarted_adview_set", 'onAdClosed')  
            case ("onAdClicked","onAdClosed"):
                return("apprunning_ad_engagement", "appstarted_adview_set", 'onAdClosed')    
        # if this_tuple[0] == "setContentView" and (this_tuple[1] == "setAdListener" or this_tuple[1] == "initialize"):
        #    return("appstarted", "appstarted_with_ads", 'setAdListener') 