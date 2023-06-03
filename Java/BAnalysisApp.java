import soot.*;
import soot.util.*;
import soot.jimple.*;
import soot.jimple.internal.*;
import soot.javaToJimple.*;
import soot.options.Options;
import java.io.*;
import java.util.*;
import soot.grimp.NewInvokeExpr;
import soot.jimple.internal.JAssignStmt.*;
import soot.jimple.internal.*;
import soot.Scene;
import soot.SootClass;
import soot.SceneTransformer;
import soot.Hierarchy;
import soot.options.Options;

import soot.jimple.toolkits.callgraph.CallGraph;
import soot.jimple.toolkits.callgraph.Edge;
// import soot.options.Options;

public class BAnalysisApp {
    private final static String ANDROID_BOOT_JAR_PATH = "../../Android/platforms/android-33/android.jar";
    private static SootClass public_variable_soot_class;
    private static String public_variable_string_class_to_inject_adlistener = "TestClass";
    private static String public_variable_string_class_to_inject = "TestClass";
    private static String public_variable_string_class_to_inject2 = "TestClass$1";
    private static String public_variable_mainactivity = null;
    private static String public_variable_admanageradview = "com.google.android.gms.ads.admanager.AdManagerAdView";
    private static String public_variable_baseadview = "com.google.android.gms.ads.BaseAdView";
    private static SootUtil this_sootUtil = new SootUtil();
    private static SootInstrumentationHelper this_Helper = new SootInstrumentationHelper();
    private static Boolean boolean_injected_classes = false;

    // searched method signatures
    private final static String[] smAddMethodSignatures = {
	    "<com.google.android.gms.example.bannerexample.MyActivity: void onCreate(android.os.Bundle)>"};

    public static void main(String[] args) {
    	String apk_file = args[0];
    	String hash = args[1];
		public_variable_mainactivity = getMainClass();
    	printFormattedOutput("File:%s\nHash:%s\nMain Class:%s\n",apk_file,hash,public_variable_mainactivity);
		
		prepareSoot(apk_file);
		
		List<SootClass> registeredServices = getRegisteredServicesClasses();
		Chain<SootClass> allClasses = getAllClasses();
		SootClass this_class = Scene.v().getSootClass(public_variable_mainactivity);
		int lastPeriodIndex = public_variable_mainactivity.lastIndexOf(".");
		String this_package = public_variable_mainactivity.substring(0, lastPeriodIndex);
        public_variable_string_class_to_inject_adlistener = this_package+"."+"TestClass";
        public_variable_string_class_to_inject = this_package+"."+"TestClass";
        public_variable_string_class_to_inject2 = this_package+"."+"TestClass$1";
		InjectNewClass_AdListenerClass2(); 
        InjectNewClass_AdListenerClass1();
		printClassHierarchy(allClasses);
		
		// START INJECTION PROCESS
		PackManager.v().getPack("jtp").add(new Transform("jtp.myTransform", new MyTransform()));
        soot.Main.main(args);

    }
    private static void printFormattedOutput(String format, Object... args) {
	    System.out.printf(format, args);
	}

    private static void prepareSoot(String app_name) {
		soot.G.reset();
		Options.v().set_src_prec(Options.src_prec_apk);
		Options.v().set_process_dir(Arrays.asList("../../APK/"+app_name));
		Options.v().set_process_multiple_dex(true);
		Options.v().set_android_jars("../../Android/platforms");
		Options.v().set_whole_program(true);
		Options.v().set_allow_phantom_refs(true);
		Options.v().set_output_format(Options.output_format_jimple);
		// Options.v().setPhaseOption("cg.spark", "on");
		Scene.v().loadNecessaryClasses();
		// Perform the necessary transformations on the scene
		Scene.v().setEntryPoints(Scene.v().getEntryPoints());
	    Scene.v().setFastHierarchy(new FastHierarchy());
	    // Run the analysis
		PackManager.v().runPacks();
		// PackManager.v().runBodyPacks();
		// PackManager.v().writeOutput();
    }

    private static String getMainClass(){
    	// public_variable_mainactivity = this_Helper.Read_Nth_Line("../APK_Details.txt",1).replace("Main_Activity:","").replace(" ", "");
    	return this_Helper.Read_Nth_Line("../APK_Details.txt",1).replace("Main_Activity:","").replace(" ", "");
    }
    private static void printClassHierarchy(Chain<SootClass> classes){
    	Hierarchy hierarchy = Scene.v().getActiveHierarchy();
    	for (SootClass sootClass : classes) {
            // if(sootClass.isConcrete()){
        	if(!sootClass.isInterface()){
            	List<SootClass> this_subclasses = hierarchy.getSubclassesOf(sootClass);
            	int number_of_subclasses = this_subclasses.size();
                if(number_of_subclasses > 0){
	                printFormattedOutput("Class: %s\n\tSubclasses:\n", sootClass.getName());
	                for (SootClass subClass : this_subclasses) {
	                    printFormattedOutput("\t%s\n",subClass.getName());
	                }
                }
            }
        }
    }
    private static Chain<SootClass> getAllClasses() {
		return Scene.v().getApplicationClasses();
    }
    private static List<SootClass> getRegisteredServicesClasses() {
		final CallGraph cg = Scene.v().getCallGraph();
		for (String mthSig : smAddMethodSignatures) {
		    SootMethod smAddServiceMth = Scene.v().grabMethod(mthSig);
		    printFormattedOutput("%s\n%s\n",mthSig,smAddServiceMth.getActiveBody().toString());
	            //iterating over the caller methods
		    Iterator<Edge> edgeIterator = cg.edgesInto(smAddServiceMth);
		    while (edgeIterator.hasNext()) {
				Edge mtdEdge = edgeIterator.next();
				SootMethod srcMtd = mtdEdge.src();
				System.out.println(srcMtd.getSignature());
				System.out.println(mtdEdge.srcStmt().toString());
		    }
		}
		return null;
    }
    // INJECTING TestClass
    private static void InjectNewClass_AdListenerClass1(){
        SootInstrumentationHelper this_Helper = new SootInstrumentationHelper();
        SootUtil this_soot_util = new SootUtil();
        boolean this_adlistener_exists = Scene.v().getApplicationClasses().toString().contains("com.google.android.gms.ads.AdListener");
        if(this_adlistener_exists)
        {
            SootMethod this_soot_method = null;
            public_variable_soot_class = new SootClass(public_variable_string_class_to_inject);
            public_variable_soot_class.setSuperclass(Scene.v().getSootClass("java.lang.Object"));
            Scene.v().addClass(public_variable_soot_class);
            public_variable_soot_class.setApplicationClass();
            
            this_soot_method = new SootMethod("<init>", Arrays.asList(), VoidType.v(), Modifier.PUBLIC);
            public_variable_soot_class.addMethod(this_soot_method);
            // Set method source for Init
            ClassLiteralMethodSourceonInitFirst this_soot_method_source_init = new ClassLiteralMethodSourceonInitFirst();
            this_soot_method_source_init.public_string_class_to_inject = public_variable_soot_class.getName();
            this_soot_method_source_init.this_soot_class = public_variable_soot_class;
            this_soot_method_source_init.this_string_method_to_inject = "void <init>";
            this_soot_method.setSource(this_soot_method_source_init);

            // this_method_arguments = Collections.<Value>emptyList();
            this_soot_method = new SootMethod("setAdListener", Arrays.asList(new Type[] {RefType.v(public_variable_baseadview)}), VoidType.v(), Modifier.PUBLIC);
            public_variable_soot_class.addMethod(this_soot_method);
            // Set method source for setAdListener
            ClassLiteralMethodSourceSetAdListener this_soot_method_source_setAdListener = new ClassLiteralMethodSourceSetAdListener();
            this_soot_method_source_setAdListener.public_string_class_to_inject = public_variable_string_class_to_inject_adlistener;
            this_soot_method_source_setAdListener.this_soot_class = public_variable_soot_class;
            this_soot_method_source_setAdListener.this_string_method_to_inject = "void setAdListener("+public_variable_baseadview+")";
            this_soot_method.setSource(this_soot_method_source_setAdListener);
        }
    }
    // INJECTING TestClass$1
    private static void InjectNewClass_AdListenerClass2(){
        SootInstrumentationHelper this_Helper = new SootInstrumentationHelper();
        SootUtil this_soot_util = new SootUtil();
        boolean this_adlistener_exists = Scene.v().getApplicationClasses().toString().contains("com.google.android.gms.ads.AdListener");
        if(this_adlistener_exists)
        {
            SootMethod this_soot_method = null;
            public_variable_soot_class = new SootClass(public_variable_string_class_to_inject2);

            public_variable_soot_class.setSuperclass(Scene.v().getSootClass("com.google.android.gms.ads.AdListener"));
            Scene.v().addClass(public_variable_soot_class);
            public_variable_soot_class.setApplicationClass();
            //CREATE FIELD: final com.google.android.gms.example.bannerexample.MyActivity this$0;
            SootField this_field_this = this_soot_util.AddFinalFieldToSootClass(public_variable_soot_class
, "this$0", public_variable_string_class_to_inject_adlistener);

            // CREATE FIELD: final com.google.android.gms.ads.admanager.AdManagerAdView val$adView;
            SootField this_field_adview = this_soot_util.AddFinalFieldToSootClass(public_variable_soot_class
, "val$adView", public_variable_baseadview);

            this_soot_method = new SootMethod("<init>", Arrays.asList(new Type[] {RefType.v(public_variable_string_class_to_inject_adlistener
), RefType.v(public_variable_baseadview)}), VoidType.v());
            public_variable_soot_class.addMethod(this_soot_method);

            // Set method source for Init
            ClassLiteralMethodSourceonInit this_soot_method_source_init = new  ClassLiteralMethodSourceonInit();
            this_soot_method_source_init.public_string_class_to_inject = public_variable_soot_class.getName();
            this_soot_method_source_init.this_soot_class = public_variable_soot_class;
            this_soot_method_source_init.this_string_method_to_inject = "void <init>";
            this_soot_method.setSource(this_soot_method_source_init);

            // Generate method public void onAdClicked()
            SootMethod this_soot_method_onAdClicked = new SootMethod("onAdClicked", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            public_variable_soot_class.addMethod(this_soot_method_onAdClicked);
            
            // // Set method source for onAdClicked
            ClassLiteralMethodSourceGeneric this_soot_methodsource_generic_adclicked = new ClassLiteralMethodSourceGeneric();
            this_soot_methodsource_generic_adclicked.public_string_class_to_inject = public_variable_soot_class.getName();
            this_soot_methodsource_generic_adclicked.this_soot_class = public_variable_soot_class;
            this_soot_methodsource_generic_adclicked.this_string_method_to_inject = "void onAdClicked()";
            this_soot_methodsource_generic_adclicked.this_string_method_name = "onAdClicked";
            this_soot_method_onAdClicked.setSource(this_soot_methodsource_generic_adclicked);

            // Generate method public void onAdClosed()
            SootMethod this_soot_method_onAdClosed = new SootMethod("onAdClosed", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            public_variable_soot_class.addMethod(this_soot_method_onAdClosed);
            
            // // Set method source for onAdClosed
            ClassLiteralMethodSourceGeneric this_soot_methodsource_generic_adclosed = new ClassLiteralMethodSourceGeneric();
            // ClassLiteralMethodSourceonAdClosed this_soot_methodsource_ad_closed = new ClassLiteralMethodSourceonAdClosed();
            this_soot_methodsource_generic_adclosed.public_string_class_to_inject = public_variable_soot_class.getName();
            this_soot_methodsource_generic_adclosed.this_soot_class = public_variable_soot_class;
            this_soot_methodsource_generic_adclosed.this_string_method_to_inject = "void onAdClosed()";
            this_soot_methodsource_generic_adclosed.this_string_method_name = "onAdClosed";
            this_soot_method_onAdClosed.setSource(this_soot_methodsource_generic_adclosed);

            // Generate method public void onAdLoaded()
            SootMethod this_soot_method_onAdLoaded = new SootMethod("onAdLoaded", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            public_variable_soot_class.addMethod(this_soot_method_onAdLoaded);
            
            // // Set method source for onAdLoaded
            ClassLiteralMethodSourceGeneric this_soot_methodsource_generic_adloaded = new ClassLiteralMethodSourceGeneric();
            // ClassLiteralMethodSourceonAdLoaded this_soot_methodsource_ad_loaded = new ClassLiteralMethodSourceonAdLoaded();
            this_soot_methodsource_generic_adloaded.public_string_class_to_inject = public_variable_soot_class.getName();
            this_soot_methodsource_generic_adloaded.this_soot_class = public_variable_soot_class;
            this_soot_methodsource_generic_adloaded.this_string_method_name = "onAdLoaded";
            this_soot_methodsource_generic_adloaded.this_string_method_to_inject = "void onAdLoaded()";
            this_soot_method_onAdLoaded.setSource(this_soot_methodsource_generic_adloaded);
            
            // Generate method public void onAdImpression()
            SootMethod this_soot_method_onAdImpression = new SootMethod("onAdImpression", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            public_variable_soot_class.addMethod(this_soot_method_onAdImpression);
            
            // // Set method source for onAdImpression
            ClassLiteralMethodSourceGeneric this_soot_methodsource_generic_adimpression = new ClassLiteralMethodSourceGeneric();
            // ClassLiteralMethodSourceonAdLoaded this_soot_methodsource_ad_loaded = new ClassLiteralMethodSourceonAdLoaded();
            this_soot_methodsource_generic_adimpression.public_string_class_to_inject = public_variable_soot_class.getName();
            this_soot_methodsource_generic_adimpression.this_soot_class = public_variable_soot_class;
            this_soot_methodsource_generic_adimpression.this_string_method_name = "onAdImpression";
            this_soot_methodsource_generic_adimpression.this_string_method_to_inject = "void onAdImpression()";
            this_soot_method_onAdImpression.setSource(this_soot_methodsource_generic_adimpression);

            // Generate method public void onAdImpression()
            SootMethod this_soot_method_onAdOpened = new SootMethod("onAdOpened", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            public_variable_soot_class.addMethod(this_soot_method_onAdOpened);
            
            // // Set method source for onAdImpression
            ClassLiteralMethodSourceGeneric this_soot_methodsource_generic_adopened = new ClassLiteralMethodSourceGeneric();
            // ClassLiteralMethodSourceonAdLoaded this_soot_methodsource_ad_loaded = new ClassLiteralMethodSourceonAdLoaded();
            this_soot_methodsource_generic_adopened.public_string_class_to_inject = public_variable_soot_class.getName();
            this_soot_methodsource_generic_adopened.this_soot_class = public_variable_soot_class;
            this_soot_methodsource_generic_adopened.this_string_method_name = "onAdOpened";
            this_soot_methodsource_generic_adopened.this_string_method_to_inject = "void onAdOpened()";
            this_soot_method_onAdOpened.setSource(this_soot_methodsource_generic_adopened);
        }
    }
}