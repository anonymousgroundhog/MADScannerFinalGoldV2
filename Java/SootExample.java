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
public class SootExample {
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


    public static void Inject_Into_Main_Activity(Body this_body, String app_name_only, String hash){
        SootMethod this_method = this_body.getMethod();
        SootClass this_class = this_method.getDeclaringClass();
        String string_this_class = this_class.getName();
        if(public_variable_mainactivity != null && string_this_class.equals(public_variable_mainactivity)){
            // Inject Locals and Units
            Chain<Unit> this_units = this_body.getUnits();
            Unit unit_to_inject_after = null;
            for(Unit this_unit: this_units){
                if (this_unit instanceof AssignStmt){
                    AssignStmt this_invokeStmt = (AssignStmt) this_unit;
                    Value left_side = this_invokeStmt.getLeftOpBox().getValue();
                    Value right_side = this_invokeStmt.getRightOpBox().getValue();
                    
                    if(left_side.getType().toString().equals(public_variable_admanageradview) && left_side.getType().toString().equals(public_variable_admanageradview)){
                        unit_to_inject_after = this_unit;
                        break;
                    }
                }
            }
            // Start injection process here
            if(unit_to_inject_after != null){
                // Add Locals
                LocalGenerator this_local_generator = Scene.v().createLocalGenerator(this_body);
                Local local_this_class = this_Helper.Generate_Local(this_body, this_local_generator, public_variable_string_class_to_inject);
                Local local_this_admanager = this_Helper.Generate_Local(this_body, this_local_generator, "com.google.android.gms.ads.admanager.AdManagerAdView");
                
                // Generate r4 = r0.<com.google.android.gms.example.bannerexample.MyActivity: com.google.android.gms.ads.admanager.AdManagerAdView adView>;
                Value this_value = null;
                for (ValueBox vb: unit_to_inject_after.getDefBoxes()){
                   this_value = vb.getValue(); 
                }
                AssignStmt this_assign_stmt_to_inject = Jimple.v().newAssignStmt(local_this_admanager, this_value);
                this_units.insertAfter(this_assign_stmt_to_inject, unit_to_inject_after);

                // Generate r2 = new com.google.android.gms.example.bannerexample.TestClass;
                AssignStmt IdentityStmtNew = Jimple.v().newAssignStmt(local_this_class, Jimple.v().newNewExpr(RefType.v(public_variable_string_class_to_inject)));
                this_units.insertAfter(IdentityStmtNew, this_assign_stmt_to_inject);
                
                // Generate specialinvoke r2.<com.google.android.gms.example.bannerexample.TestClass: void <init>()>();
                SootClass class_to_inject = Scene.v().getSootClass(public_variable_string_class_to_inject);
                SootMethodRef this_ref = class_to_inject.getMethod("void <init>()").makeRef();
                SpecialInvokeExpr special_invokeExpr_to_inject = Jimple.v().newSpecialInvokeExpr(local_this_class, this_ref);
                Unit u1= Jimple.v().newInvokeStmt(special_invokeExpr_to_inject);
                this_units.insertAfter(u1, IdentityStmtNew);
                
                // Generate virtualinvoke r2.<com.google.android.gms.example.bannerexample.TestClass: void setAdListener(com.google.android.gms.ads.BaseAdView)>(r4);
                this_ref = class_to_inject.getMethod("void setAdListener("+public_variable_baseadview+")").makeRef();
                VirtualInvokeExpr this_virtualInvokeExpr_to_inject = Jimple.v().newVirtualInvokeExpr(local_this_class,this_ref,local_this_admanager);
                Unit u2= Jimple.v().newInvokeStmt(this_virtualInvokeExpr_to_inject);
                
                this_units.insertAfter(u2, u1);

                // INJECT STANDARD LOG MESSAGE

                SootMethodRef method_ref_log = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef();
                String MSG = app_name_only+"---"+hash+"---"+this_class.getName()+"---"+this_method.getName()+"---null";
                List<Value> listArgs = new ArrayList<Value>();
                listArgs.add(StringConstant.v("FiniteState"));
                listArgs.add(StringConstant.v(MSG));
                StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(method_ref_log, listArgs);
                InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
                this_units.insertAfter(InvokeStatementLog, u2);
            }
        }
    }
    public static void main(String[] sootarguments) {
         // Scene.v().setFastHierarchy(Hierarchy());
        // String app_name_only = "Banner_Example_Testing_Hello_World2";
        // Options.v().set_soot_classpath(".");
        // Options.v().set_prepend_classpath(true);
        Options.v().set_no_writeout_body_releasing(true);
        // Options.v().set_full_resolver(true);
        Options.v().set_include_all(true);
        Options.v().set_src_prec(Options.src_prec_apk);
        // Options.v().set_output_format(Options.output_format_j);
        Options.v().set_allow_phantom_refs(true);
        Options.v().set_output_dir("../sootOutput/");
        Options.v().set_process_dir(Arrays.asList("../../APK/Banner_Example_Testing_Hello_World2.apk"));
        Options.v().set_android_jars("../../Android/platforms");
        Options.v().set_process_multiple_dex(true);
        Options.v().set_whole_program(true);
        Options.v().setPhaseOption("cg.spark", "on");
        Scene.v().loadNecessaryClasses();
        PackManager.v().runPacks();
        PackManager.v().writeOutput();
        // Run the analysis
        // PackManager.v().runPacks();
        // RUN SOOT
        soot.Main.main(sootarguments);
        

        Map<String, List<String>> class_to_static_methods = new HashMap<>();
        // hash = sootarguments[2];
        Scene this_Scene = Scene.v();

        public_variable_mainactivity = this_Helper.Read_Nth_Line("../APK_Details.txt",1).replace("Main_Activity:","").replace(" ", "");
        SootClass main_class = this_Scene.getSootClass(public_variable_mainactivity);
        Inject_Into_Main_Activity(main_class.getMethodByName("onCreate").getActiveBody(), "Test", "hash");
        // Print("Running Soot!!!");
        Chain<SootClass> classes = this_Scene.getApplicationClasses();
        
        // SootClass superClass = Scene.v().getSootClass("com.google.android.gms.ads.BaseAdView");
        // SootClass subClass = Scene.v().getSootClass("com.google.android.gms.example.bannerexample.TestClassAdViewAdListener");

        // Get the active hierarchy
        Hierarchy hierarchy = this_Scene.getActiveHierarchy();

        // Iterate over all classes and print the superclass and subclasses
        for (SootClass sootClass : classes) {
            if(sootClass instanceof SootClass){
                System.out.println("Class: " + sootClass.getName());
                // SootClass superClass = hierarchy.getSuperclass(sootClass);
                if (sootClass.hasSuperclass()) {
                    System.out.println("  Superclass: " + sootClass.getSuperclass().getName());
                }
                // System.out.println("  Subclasses:");
                // for (SootClass subClass : hierarchy.getSubclassesOf(sootClass)) {
                //     System.out.println("    " + subClass.getName());
                // }
                // System.out.println();

            }
        }
    }
}
