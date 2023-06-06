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
    	String app_name_only = apk_file.replace(".apk","");
    	String hash = args[1];
    	String option = args[2];
		this_Helper.public_variable_mainactivity = this_Helper.getMainClass();
    	this_Helper.printFormattedOutput("File:%s\nHash:%s\nMain Class:%s\nOption:%s\n",apk_file, hash, this_Helper.public_variable_mainactivity, option);
		
		this_Helper.prepareSoot(apk_file, option);
		
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
		}
		this_Helper.InjectNewClass_AdListenerClass2(); 
        this_Helper.InjectNewClass_AdListenerClass1();
		// printClassHierarchy(allClasses);
		
		// INJECT CODE INTO MAINACTIVITY
		if(this_Helper.Class_Contains_onCreate(mainactivity_class)){
			SootMethod this_method = mainactivity_class.getMethodByName("onCreate");
			String method_signature = this_method.getSignature();
			this_Helper.Inject_Into_Main_Activity(this_method.getActiveBody(), app_name_only, hash);
		}
		// PackManager.v().getPack("jtp").add(new Transform("jtp.myTransform", new MyTransform()));
        this_Helper.writeClassHierarchyToFile(allClasses, "class_hierarchy.txt");
        soot.Main.main(args);
    }
//     private static void printFormattedOutput(String format, Object... args) {
// 	    System.out.printf(format, args);
// 	}
//     private static void prepareSoot(String app_name, String option) {
// 		soot.G.reset();
// 		Options.v().set_src_prec(Options.src_prec_apk);
// 		Options.v().set_process_dir(Arrays.asList("../../APK/"+app_name));
// 		Options.v().set_process_multiple_dex(true);
// 		Options.v().set_android_jars("../../Android/platforms");
// 		Options.v().set_whole_program(true);
// 		Options.v().set_allow_phantom_refs(true);
// 		Options.v().setPhaseOption("cg.spark", "on");
		
// 		if(option.equals("J") || option.equals("j")){
// 			Options.v().set_output_format(Options.output_format_jimple);
// 		}else{
// 			Options.v().set_output_format(Options.output_format_dex);
// 		}
		
// 		Scene.v().loadNecessaryClasses();
// 		// Perform the necessary transformations on the scene
// 		Scene.v().setEntryPoints(Scene.v().getEntryPoints());
// 	    Scene.v().setFastHierarchy(new FastHierarchy());
// 	    // Run the analysis
// 		PackManager.v().runPacks();
//     }
//     private static String getMainClass(){
//     	return this_Helper.Read_Nth_Line("../APK_Details.txt",1).replace("Main_Activity:","").replace(" ", "");
//     }
//     private static void printClassHierarchyForSpecificClass(SootClass sootClass){
//     	// printFormattedOutput("Inside printClassHierarchyForSpecificClass\n");
//     	Hierarchy hierarchy = Scene.v().getActiveHierarchy();
//     	if(!sootClass.isInterface()){
//         	List<SootClass> this_subclasses = hierarchy.getSubclassesOf(sootClass);
//         	int number_of_subclasses = this_subclasses.size();
//             if(number_of_subclasses > 0){
//                 printFormattedOutput("Class: %s\n\tSubclasses:\n", sootClass.getName());
//                 for (SootClass subClass : this_subclasses) {
//                     printFormattedOutput("\t%s\n",subClass.getName());
//                 }
//             }
//         }else{
//         	printFormattedOutput("Class: %s is a interface\n", sootClass.getName());
//         }
//     }
//     private static void writeClassHierarchyToFile(Chain<SootClass> classes, String filename){
//     	Hierarchy hierarchy = Scene.v().getActiveHierarchy();
//     	int counter = 0;
//     	// String filename="class_hierarchy.txt";
//     	this_Helper.RemoveFile(filename);
//     	for (SootClass sootClass : classes) {
//         	if(!sootClass.isInterface()){
//             	List<SootClass> this_subclasses = hierarchy.getSubclassesOf(sootClass);
//             	int number_of_subclasses = this_subclasses.size();
//                 if(number_of_subclasses > 0){
//                 	this_Helper.WriteToTextFile("Class: "+sootClass.getName()+"\n\tSubclasses:\n", filename, true);
// 	                // printFormattedOutput("Class: %s\n\tSubclasses:\n", sootClass.getName());
// 	                // if(counter < 1){
// 	                // 	counter = counter+1;
// 	                // 	this_Helper.WriteToTextFile("Class: "+sootClass.getName()+"\n\tSubclasses:\n", filename, false);
// 	                // }else{
// 					// 	this_Helper.WriteToTextFile("Class: "+sootClass.getName()+"\n\tSubclasses:\n", filename, true);
// 	                // }
// 	                for (SootClass subClass : this_subclasses) {
// 	                	this_Helper.WriteToTextFile("\t"+subClass.getName()+"\n", filename, true);
// 	                    // printFormattedOutput("\t%s\n",subClass.getName());
// 	                }
//                 }
//             }
//         }
//     }
//     private static void printClassHierarchy(Chain<SootClass> classes){
//     	Hierarchy hierarchy = Scene.v().getActiveHierarchy();
//     	for (SootClass sootClass : classes) {
//         	if(!sootClass.isInterface()){
//             	List<SootClass> this_subclasses = hierarchy.getSubclassesOf(sootClass);
//             	int number_of_subclasses = this_subclasses.size();
//                 if(number_of_subclasses > 0){
// 	                printFormattedOutput("Class: %s\n\tSubclasses:\n", sootClass.getName());
// 	                for (SootClass subClass : this_subclasses) {
// 	                    printFormattedOutput("\t%s\n",subClass.getName());
// 	                }
//                 }
//             }
//         }
//     }
//     private static Chain<SootClass> getAllClasses() {
// 		return Scene.v().getApplicationClasses();
//     }
//     private static List<SootClass> getRegisteredServicesClasses() {
// 		final CallGraph cg = Scene.v().getCallGraph();
// 		for (String mthSig : smAddMethodSignatures) {
// 		    SootMethod smAddServiceMth = Scene.v().grabMethod(mthSig);
// 		    printFormattedOutput("%s\n%s\n",mthSig,smAddServiceMth.getActiveBody().toString());
// 		    Iterator<Edge> edgeIterator = cg.edgesInto(smAddServiceMth);
// 		    while (edgeIterator.hasNext()) {
// 				Edge mtdEdge = edgeIterator.next();
// 				SootMethod srcMtd = mtdEdge.src();
// 				System.out.println(srcMtd.getSignature());
// 				System.out.println(mtdEdge.srcStmt().toString());
// 		    }
// 		}
// 		return null;
//     }
//     // INJECTING TestClass
//     private static void InjectNewClass_AdListenerClass1(){
//         SootInstrumentationHelper this_Helper = new SootInstrumentationHelper();
//         SootUtil this_soot_util = new SootUtil();
//         boolean this_adlistener_exists = Scene.v().getApplicationClasses().toString().contains("com.google.android.gms.ads.AdListener");
//         if(this_adlistener_exists)
//         {
//             SootMethod this_soot_method = null;
//             public_variable_soot_class = new SootClass(public_variable_string_class_to_inject);
//             public_variable_soot_class.setSuperclass(Scene.v().getSootClass("java.lang.Object"));
//             Scene.v().addClass(public_variable_soot_class);
//             public_variable_soot_class.setApplicationClass();
            
//             this_soot_method = new SootMethod("<init>", Arrays.asList(), VoidType.v(), Modifier.PUBLIC);
//             public_variable_soot_class.addMethod(this_soot_method);
//             // Set method source for Init
//             ClassLiteralMethodSourceonInitFirst this_soot_method_source_init = new ClassLiteralMethodSourceonInitFirst();
//             this_soot_method_source_init.public_string_class_to_inject = public_variable_soot_class.getName();
//             this_soot_method_source_init.this_soot_class = public_variable_soot_class;
//             this_soot_method_source_init.this_string_method_to_inject = "void <init>";
//             this_soot_method.setSource(this_soot_method_source_init);

//             // this_method_arguments = Collections.<Value>emptyList();
//             this_soot_method = new SootMethod("setAdListener", Arrays.asList(new Type[] {RefType.v(public_variable_baseadview)}), VoidType.v(), Modifier.PUBLIC);
//             public_variable_soot_class.addMethod(this_soot_method);
            
//             // Set method source for setAdListener
//             ClassLiteralMethodSourceSetAdListener this_soot_method_source_setAdListener = new ClassLiteralMethodSourceSetAdListener();
//             this_soot_method_source_setAdListener.public_string_class_to_inject = public_variable_string_class_to_inject_adlistener;
//             this_soot_method_source_setAdListener.this_soot_class = public_variable_soot_class;
//             this_soot_method_source_setAdListener.this_string_method_to_inject = "void setAdListener("+public_variable_baseadview+")";
//             this_soot_method.setSource(this_soot_method_source_setAdListener);
//         }
//     }
//     // INJECTING TestClass$1
//     private static void InjectNewClass_AdListenerClass2(){
//         SootInstrumentationHelper this_Helper = new SootInstrumentationHelper();
//         SootUtil this_soot_util = new SootUtil();
//         boolean this_adlistener_exists = Scene.v().getApplicationClasses().toString().contains("com.google.android.gms.ads.AdListener");
//         if(this_adlistener_exists)
//         {
//             SootMethod this_soot_method = null;
//             public_variable_soot_class = new SootClass(public_variable_string_class_to_inject2);

//             public_variable_soot_class.setSuperclass(Scene.v().getSootClass("com.google.android.gms.ads.AdListener"));
//             Scene.v().addClass(public_variable_soot_class);
//             public_variable_soot_class.setApplicationClass();
//             //CREATE FIELD: final com.google.android.gms.example.bannerexample.MyActivity this$0;
//             SootField this_field_this = this_soot_util.AddFinalFieldToSootClass(public_variable_soot_class
// , "this$0", public_variable_string_class_to_inject_adlistener);

//             // CREATE FIELD: final com.google.android.gms.ads.admanager.AdManagerAdView val$adView;
//             SootField this_field_adview = this_soot_util.AddFinalFieldToSootClass(public_variable_soot_class
// , "val$adView", public_variable_baseadview);

//             this_soot_method = new SootMethod("<init>", Arrays.asList(new Type[] {RefType.v(public_variable_string_class_to_inject_adlistener
// ), RefType.v(public_variable_baseadview)}), VoidType.v());
//             public_variable_soot_class.addMethod(this_soot_method);

//             // Set method source for Init
//             ClassLiteralMethodSourceonInit this_soot_method_source_init = new  ClassLiteralMethodSourceonInit();
//             this_soot_method_source_init.public_string_class_to_inject = public_variable_soot_class.getName();
//             this_soot_method_source_init.this_soot_class = public_variable_soot_class;
//             this_soot_method_source_init.this_string_method_to_inject = "void <init>";
//             this_soot_method.setSource(this_soot_method_source_init);

//             // Generate method public void onAdClicked()
//             SootMethod this_soot_method_onAdClicked = new SootMethod("onAdClicked", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
//             public_variable_soot_class.addMethod(this_soot_method_onAdClicked);
            
//             // // Set method source for onAdClicked
//             ClassLiteralMethodSourceGeneric this_soot_methodsource_generic_adclicked = new ClassLiteralMethodSourceGeneric();
//             this_soot_methodsource_generic_adclicked.public_string_class_to_inject = public_variable_soot_class.getName();
//             this_soot_methodsource_generic_adclicked.this_soot_class = public_variable_soot_class;
//             this_soot_methodsource_generic_adclicked.this_string_method_to_inject = "void onAdClicked()";
//             this_soot_methodsource_generic_adclicked.this_string_method_name = "onAdClicked";
//             this_soot_method_onAdClicked.setSource(this_soot_methodsource_generic_adclicked);

//             // Generate method public void onAdClosed()
//             SootMethod this_soot_method_onAdClosed = new SootMethod("onAdClosed", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
//             public_variable_soot_class.addMethod(this_soot_method_onAdClosed);
            
//             // // Set method source for onAdClosed
//             ClassLiteralMethodSourceGeneric this_soot_methodsource_generic_adclosed = new ClassLiteralMethodSourceGeneric();
//             // ClassLiteralMethodSourceonAdClosed this_soot_methodsource_ad_closed = new ClassLiteralMethodSourceonAdClosed();
//             this_soot_methodsource_generic_adclosed.public_string_class_to_inject = public_variable_soot_class.getName();
//             this_soot_methodsource_generic_adclosed.this_soot_class = public_variable_soot_class;
//             this_soot_methodsource_generic_adclosed.this_string_method_to_inject = "void onAdClosed()";
//             this_soot_methodsource_generic_adclosed.this_string_method_name = "onAdClosed";
//             this_soot_method_onAdClosed.setSource(this_soot_methodsource_generic_adclosed);

//             // Generate method public void onAdLoaded()
//             SootMethod this_soot_method_onAdLoaded = new SootMethod("onAdLoaded", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
//             public_variable_soot_class.addMethod(this_soot_method_onAdLoaded);
            
//             // // Set method source for onAdLoaded
//             ClassLiteralMethodSourceGeneric this_soot_methodsource_generic_adloaded = new ClassLiteralMethodSourceGeneric();
//             // ClassLiteralMethodSourceonAdLoaded this_soot_methodsource_ad_loaded = new ClassLiteralMethodSourceonAdLoaded();
//             this_soot_methodsource_generic_adloaded.public_string_class_to_inject = public_variable_soot_class.getName();
//             this_soot_methodsource_generic_adloaded.this_soot_class = public_variable_soot_class;
//             this_soot_methodsource_generic_adloaded.this_string_method_name = "onAdLoaded";
//             this_soot_methodsource_generic_adloaded.this_string_method_to_inject = "void onAdLoaded()";
//             this_soot_method_onAdLoaded.setSource(this_soot_methodsource_generic_adloaded);
            
//             // Generate method public void onAdImpression()
//             SootMethod this_soot_method_onAdImpression = new SootMethod("onAdImpression", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
//             public_variable_soot_class.addMethod(this_soot_method_onAdImpression);
            
//             // // Set method source for onAdImpression
//             ClassLiteralMethodSourceGeneric this_soot_methodsource_generic_adimpression = new ClassLiteralMethodSourceGeneric();
//             // ClassLiteralMethodSourceonAdLoaded this_soot_methodsource_ad_loaded = new ClassLiteralMethodSourceonAdLoaded();
//             this_soot_methodsource_generic_adimpression.public_string_class_to_inject = public_variable_soot_class.getName();
//             this_soot_methodsource_generic_adimpression.this_soot_class = public_variable_soot_class;
//             this_soot_methodsource_generic_adimpression.this_string_method_name = "onAdImpression";
//             this_soot_methodsource_generic_adimpression.this_string_method_to_inject = "void onAdImpression()";
//             this_soot_method_onAdImpression.setSource(this_soot_methodsource_generic_adimpression);

//             // Generate method public void onAdImpression()
//             SootMethod this_soot_method_onAdOpened = new SootMethod("onAdOpened", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
//             public_variable_soot_class.addMethod(this_soot_method_onAdOpened);
            
//             // // Set method source for onAdImpression
//             ClassLiteralMethodSourceGeneric this_soot_methodsource_generic_adopened = new ClassLiteralMethodSourceGeneric();
//             this_soot_methodsource_generic_adopened.public_string_class_to_inject = public_variable_soot_class.getName();
//             this_soot_methodsource_generic_adopened.this_soot_class = public_variable_soot_class;
//             this_soot_methodsource_generic_adopened.this_string_method_name = "onAdOpened";
//             this_soot_methodsource_generic_adopened.this_string_method_to_inject = "void onAdOpened()";
//             this_soot_method_onAdOpened.setSource(this_soot_methodsource_generic_adopened);
//         }
//     }
//     private static void Inject_Into_Main_Activity(Body this_body, String app_name_only, String hash){
//         SootMethod this_method = this_body.getMethod();
//         SootClass this_class = this_method.getDeclaringClass();
//         String string_this_class = this_class.getName();
//         if(public_variable_mainactivity != null && string_this_class.equals(public_variable_mainactivity)){
//             // Inject Locals and Units
//             Chain<Unit> this_units = this_body.getUnits();
//             Unit unit_to_inject_after = null;
//             for(Unit this_unit: this_units){
//                 if (this_unit instanceof AssignStmt){
//                     AssignStmt this_invokeStmt = (AssignStmt) this_unit;
//                     Value left_side = this_invokeStmt.getLeftOpBox().getValue();
//                     Value right_side = this_invokeStmt.getRightOpBox().getValue();
//                     if(left_side.getType().toString().equals(public_variable_admanageradview) && left_side.getType().toString().equals(public_variable_admanageradview)){
//                         unit_to_inject_after = this_unit;
//                         // break;
//                     }
//                 }
//             }
//             // Start injection process here
//             if(unit_to_inject_after != null){
//                 // Add Locals
//                 LocalGenerator this_local_generator = Scene.v().createLocalGenerator(this_body);
//                 Local local_this_class = this_Helper.Generate_Local(this_body, this_local_generator, public_variable_string_class_to_inject);
//                 Local local_this_admanager = this_Helper.Generate_Local(this_body, this_local_generator, "com.google.android.gms.ads.admanager.AdManagerAdView");
                
//                 // Generate r4 = r0.<com.google.android.gms.example.bannerexample.MyActivity: com.google.android.gms.ads.admanager.AdManagerAdView adView>;
//                 Value this_value = null;
//                 for (ValueBox vb: unit_to_inject_after.getDefBoxes()){
//                    this_value = vb.getValue(); 
//                 }
//                 AssignStmt this_assign_stmt_to_inject = Jimple.v().newAssignStmt(local_this_admanager, this_value);
//                 this_units.insertAfter(this_assign_stmt_to_inject, unit_to_inject_after);

//                 // Generate r2 = new com.google.android.gms.example.bannerexample.TestClass;
//                 AssignStmt IdentityStmtNew = Jimple.v().newAssignStmt(local_this_class, Jimple.v().newNewExpr(RefType.v(public_variable_string_class_to_inject)));
//                 this_units.insertAfter(IdentityStmtNew, this_assign_stmt_to_inject);
                
//                 // Generate specialinvoke r2.<com.google.android.gms.example.bannerexample.TestClass: void <init>()>();
//                 SootClass class_to_inject = Scene.v().getSootClass(public_variable_string_class_to_inject);
//                 SootMethodRef this_ref = class_to_inject.getMethod("void <init>()").makeRef();
//                 SpecialInvokeExpr special_invokeExpr_to_inject = Jimple.v().newSpecialInvokeExpr(local_this_class, this_ref);
//                 Unit u1= Jimple.v().newInvokeStmt(special_invokeExpr_to_inject);
//                 this_units.insertAfter(u1, IdentityStmtNew);
                
//                 // Generate virtualinvoke r2.<com.google.android.gms.example.bannerexample.TestClass: void setAdListener(com.google.android.gms.ads.BaseAdView)>(r4);
//                 this_ref = class_to_inject.getMethod("void setAdListener("+public_variable_baseadview+")").makeRef();
//                 VirtualInvokeExpr this_virtualInvokeExpr_to_inject = Jimple.v().newVirtualInvokeExpr(local_this_class,this_ref,local_this_admanager);
//                 Unit u2= Jimple.v().newInvokeStmt(this_virtualInvokeExpr_to_inject);
                
//                 this_units.insertAfter(u2, u1);

//                 // INJECT STANDARD LOG MESSAGE

//                 SootMethodRef method_ref_log = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef();
//                 String MSG = app_name_only+"---"+hash+"---"+this_class.getName()+"---"+this_method.getName()+"---null";
//                 List<Value> listArgs = new ArrayList<Value>();
//                 listArgs.add(StringConstant.v("FiniteState"));
//                 listArgs.add(StringConstant.v(MSG));
//                 StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(method_ref_log, listArgs);
//                 InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
//                 this_units.insertAfter(InvokeStatementLog, u2);
//             }
//         }
//     }
//     private static Boolean Contains_Ads(Chain<SootClass> classes){
//     	for (SootClass sootClass : classes) {
//     		if(sootClass.getName().contains("com.google.android.gms.ads")){
//     			return true;
//     		}
//     	}
//     	return false;
//     }
//     private static Boolean Class_Contains_onCreate(SootClass this_class){
//     	for (SootMethod sootMethod : this_class.getMethods()) {
//     		if(sootMethod.getName().equals("onCreate")){
//     			return true;
//     		}
//     	}
//     	return false;
//     }
}