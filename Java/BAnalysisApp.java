import soot.*;
import soot.util.*;
import soot.jimple.*;
import soot.jimple.internal.*;
import soot.jimple.internal.JAssignStmt.*;
import soot.jimple.toolkits.callgraph.*;
import soot.options.Options;

import java.io.*;
import java.util.*;


public class BAnalysisApp {
    private static SootInstrumentationHelper this_Helper = new SootInstrumentationHelper();

    public static void main(String[] args) {
    	String apk_file = args[0];
    	String folder = args[3];
    	String app_name_only = apk_file.replace(".apk","");
    	String hash = args[1];
    	String option = args[2];
		this_Helper.public_variable_mainactivity = this_Helper.getMainClass();
    	this_Helper.printFormattedOutput("File:%s\nHash:%s\nMain Class:%s\nOption:%s\n",apk_file, hash, this_Helper.public_variable_mainactivity, option);
		
		if (this_Helper.public_variable_mainactivity == "") {

			this_Helper.printFormattedOutput("APK doesn't have a launchable activity!!!\n");
		}	
		this_Helper.prepareSoot(folder,apk_file, option);
		
		// List<SootClass> registeredServices = getRegisteredServicesClasses();
		Chain<SootClass> allClasses = this_Helper.getAllClasses();
		SootClass mainactivity_class = Scene.v().getSootClass(this_Helper.public_variable_mainactivity);
		int lastPeriodIndex = this_Helper.public_variable_mainactivity.lastIndexOf(".");
		String this_package = this_Helper.public_variable_mainactivity.substring(0, lastPeriodIndex);
	        this_Helper.public_variable_string_class_to_inject_adlistener = this_package+"."+"TestClass";
	        this_Helper.public_variable_string_class_to_inject = this_package+"."+"TestClass";
	        this_Helper.public_variable_string_class_to_inject2 = this_package+"."+"TestClass$1";
			
		if(this_Helper.Contains_Ads(allClasses)){
			this_Helper.printFormattedOutput("\n%s Contains ads\n\n",app_name_only);
			SootClass adListener = Scene.v().getSootClass("com.google.android.gms.ads.AdListener");
			this_Helper.printFormattedOutput("Classes to Look into:%s\n",this_Helper.ReturnClassHierarchyForSpecificClassAndExcludeAdLibraries(adListener));
		}
		this_Helper.InjectNewClass_AdListenerClass2(); 
		this_Helper.InjectNewClass_AdListenerClass1();
		
		// INJECT CODE INTO MAINACTIVITY
		if(this_Helper.Class_Contains_onCreate(mainactivity_class)){
			SootMethod this_method = mainactivity_class.getMethodByName("onCreate");
			String method_signature = this_method.getSignature();
			this_Helper.Inject_Into_Main_Activity(this_method.getActiveBody(), app_name_only, hash);
			//TESTING
			//this_Helper.ReturnVirtualInvokeClasses(mainactivity_class,"onCreate");
			this_Helper.printFormattedOutput("%s\n",this_Helper.ReturnVirtualInvokeClasses(mainactivity_class,"onCreate"));
		}
		// PackManager.v().getPack("jtp").add(new Transform("jtp.myTransform", new MyTransform()));
		// CHECK ALL CLASSES FOR GOOGLE ADMOB AND THEN INJECT LOGS
		List<SootClass> admob_classes=this_Helper.Extract_Google_AdMob_Classes(allClasses);
		this_Helper.Inject_Into_Google_Libs_Log_Message(admob_classes, app_name_only, hash);
		this_Helper.writeClassHierarchyToFile(allClasses, "../class_hierarchy.txt");
        soot.Main.main(args);
    }
}