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
    private static SootInstrumentationHelper this_Instrumentation_Helper = new SootInstrumentationHelper();

    public static void main(String[] args) {
    	String apk_file = args[0];
    	String this_folder = args[3];
    	String app_name_only = apk_file.replace(".apk","");
    	String this_hash = args[1];
    	String option = args[2];
		this_Instrumentation_Helper.public_variable_mainactivity = this_Instrumentation_Helper.getMainClass();
    	this_Instrumentation_Helper.printFormattedOutput("File:%s\nHash:%s\nMain Class:%s\nOption:%s\n",apk_file, this_hash, this_Instrumentation_Helper.public_variable_mainactivity, option);
		
		if (this_Instrumentation_Helper.public_variable_mainactivity == "") {
			this_Instrumentation_Helper.printFormattedOutput("APK doesn't have a launchable activity!!!\n");
		} else{	
		this_Instrumentation_Helper.prepareSoot(this_folder,apk_file, option);
		
		// List<SootClass> registeredServices = getRegisteredServicesClasses();
		Chain<SootClass> all_classes = this_Instrumentation_Helper.getAllClasses();
		SootClass mainactivity_class = Scene.v().getSootClass(this_Instrumentation_Helper.public_variable_mainactivity);
		List<String> mainactivity_methods = this_Instrumentation_Helper.Return_MainActivity_Class_Methods();
		int lastPeriodIndex = this_Instrumentation_Helper.public_variable_mainactivity.lastIndexOf(".");
		String this_package = this_Instrumentation_Helper.public_variable_mainactivity.substring(0, lastPeriodIndex);
        this_Instrumentation_Helper.public_variable_string_class_to_inject_adlistener = this_package+"."+"MADScannerTestClass";
        this_Instrumentation_Helper.public_variable_string_class_to_inject = this_package+"."+"MADScannerTestClass";
        this_Instrumentation_Helper.public_variable_string_class_to_inject2 = this_package+"."+"MADScannerTestClass$1";
			
		if(this_Instrumentation_Helper.Contains_Ads(all_classes)){
			this_Instrumentation_Helper.printFormattedOutput("\n%s Contains ads\n\n",app_name_only);
			SootClass ad_listener = Scene.v().getSootClass("com.google.android.gms.ads.AdListener");
			this_Instrumentation_Helper.printFormattedOutput("Classes to Look into:%s\n",this_Instrumentation_Helper.ReturnClassHierarchyForSpecificClassAndExcludeAdLibraries(ad_listener));
		}
		this_Instrumentation_Helper.InjectNewClass_AdListenerClass2(app_name_only, this_hash); 
		this_Instrumentation_Helper.InjectNewClass_AdListenerClass1();
		// TESTING
		this_Instrumentation_Helper.Extract_AdListener_Call_Locations(mainactivity_methods, app_name_only);
		// INJECT CODE INTO MAINACTIVITY
		if(this_Instrumentation_Helper.Class_Contains_onCreate(mainactivity_class)){
			SootMethod this_method = mainactivity_class.getMethodByName("onCreate");
			String method_signature = this_method.getSignature();
			this_Instrumentation_Helper.Inject_Into_Main_Activity(this_method.getActiveBody(), app_name_only, this_hash);
			//TESTING
			//this_Instrumentation_Helper.ReturnVirtualInvokeClasses(mainactivity_class,"onCreate");
			this_Instrumentation_Helper.printFormattedOutput("%s\n",this_Instrumentation_Helper.ReturnVirtualInvokeClasses(mainactivity_class,"onCreate"));
		
			// 	r3 = r0.<com.google.android.gms.example.bannerexample.MyActivity: com.google.android.gms.ads.admanager.AdManagerAdView adView>;

	        // virtualinvoke r4.<com.google.android.gms.example.bannerexample.TestingHello: void callTestClassAdViewAdListener(com.google.android.gms.ads.BaseAdView)>(r3);
		}
		// PackManager.v().getPack("jtp").add(new Transform("jtp.myTransform", new MyTransform()));
		// CHECK ALL CLASSES FOR GOOGLE ADMOB AND THEN INJECT LOGS
		List<SootClass> admob_classes=this_Instrumentation_Helper.Extract_Google_AdMob_Classes(all_classes);
		this_Instrumentation_Helper.Inject_Into_Google_Libs_Log_Message(admob_classes, app_name_only, this_hash);
		this_Instrumentation_Helper.writeClassHierarchyToFile(all_classes, "../class_hierarchy.txt");
        soot.Main.main(args);
		}	
    }
}