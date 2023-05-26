import soot.*;
import soot.util.*;
import soot.jimple.*;
import soot.jimple.internal.*;
import soot.javaToJimple.*;
import soot.options.Options;
import java.io.*;
import java.util.*;
// import soot.jimple.internal.JAssignStmt.LinkedVariableBox;
// import soot.jimple.internal.JAssignStmt.LinkedRValueBox;
import soot.grimp.NewInvokeExpr;
import soot.*;
import soot.jimple.internal.JAssignStmt.*;
import soot.jimple.internal.*;
public class SootTest3
{
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

    // INJECTING TestClass
    // Issue was with setting a local instead of a thisRef. Use Scene.v().makeFieldRef
    public static void InjectNewClass_AdListenerClass1(){
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
            this_soot_method_source_setAdListener.this_string_method_to_inject = "void <init>";
            this_soot_method.setSource(this_soot_method_source_setAdListener);
        }
    }
    // INJECTING TestClass$1
    public static void InjectNewClass_AdListenerClass2(){
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
            // SootClass this_class_admanageradview = Scene.v().getSootClass("com.google.android.gms.ads.admanager.AdManagerAdView");
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
            ClassLiteralMethodSourceonAdClicked this_soot_methodsource = new ClassLiteralMethodSourceonAdClicked();
            this_soot_methodsource.public_string_class_to_inject = public_variable_soot_class.getName();
            // this_soot_methodsource.public_variable_string_class_to_inject = public_variable_string_class_to_inject;
            this_soot_methodsource.this_soot_class = public_variable_soot_class;
            this_soot_methodsource.this_string_method_to_inject = "void onAdClicked()";
            this_soot_method_onAdClicked.setSource(this_soot_methodsource);

            
        }
        // this_Helper.Print("Finished Injecting New Class");
    }

    public static void Inject_Into_Main_Activity(Body this_body){
        SootMethod this_method = this_body.getMethod();
        SootClass this_class = this_method.getDeclaringClass();
        String string_this_class = this_class.getName();
        if(public_variable_mainactivity != null && string_this_class.equals(public_variable_mainactivity)){
            // Inject Locals and Units
            Chain<Unit> this_units = this_body.getUnits();
            Unit unit_to_inject_after = null;
            for(Unit this_unit: this_units){
                // if (this_unit instanceof AssignStmt){
                    // AssignStmt this_invokeStmt = (AssignStmt) this_unit;
                    // if(this_invokeStmt.getLeftOpBox().getValue().getType().toString().equals(public_variable_admanageradview) && this_invokeStmt.getRightOpBox().getValue().getType().toString().equals(public_variable_admanageradview)){
                if(this_unit.toString().equals("r0.<com.google.android.gms.example.bannerexample.MyActivity: com.google.android.gms.ads.admanager.AdManagerAdView adView> = r4")){
                    // this_Helper.Print("\nStmt:"+this_invokeStmt.toString()+ " (Left:" + this_invokeStmt.getLeftOpBox().getValue().getType()+" Right:"+this_invokeStmt.getRightOpBox().getValue().getType()+")");
                    unit_to_inject_after = this_unit;
                    break;
                }
                    // if(this_invokeStmt.getInvokeExpr() instanceof IdentityStmt){
                    //     this_Helper.Print("Stmt:"+this_invokeStmt.toString());
                    //     // SootMethod this_invokeExpr_method = this_invokeStmt.getInvokeExpr().getMethod();
                    //     // if(this_invokeExpr_method.getName().contains("findViewById")){
                    //     //     this_Helper.Print("FOUND Class:"+this_invokeExpr_method.toString());
                    //     //     unit_to_inject_after = this_unit;
                    //     // }
                    // }
                // }
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
                // this_Helper.Print("Testing:"+this_assign_stmt_to_inject.toString());
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
            }
        }
    }
    public static void Testing(Body this_body){
        SootMethod this_method = this_body.getMethod();
        String this_method_name = this_method.getName();
        SootClass this_class = this_method.getDeclaringClass();
        String this_class_name = this_class.getName();
        
            
        if(this_class_name.equals("com.google.android.gms.example.bannerexample.TestClassAdViewAdListener") && this_method_name.contains("setAdListener")){
         for(Local this_local : this_body.getLocals()){
             this_Helper.Print(this_local.getType().toString()); 
         }
         // Chain<Unit> this_units = this_body.getUnits();
         // for(Unit this_unit: this_units){

         // }  
        }
    }
    public static void main(String[] args) throws FileNotFoundException, IOException
    {
        // setupSoot("../../Android/platforms", "../../APK/"+args[0], "../sootOutput");
        Once once = new Once();
        

        PackManager.v().getPack("jtp").add(new Transform("jtp.myLogger", new BodyTransformer() {
            @Override
            protected void internalTransform(Body this_body, String phaseName, Map<String, String> options) {
                Testing(this_body);
                if(boolean_injected_classes){
                    Inject_Into_Main_Activity(this_body);
                }
                once.run(new Runnable() {
                    @Override
                    public void run() {
                        public_variable_mainactivity = this_Helper.Read_Nth_Line("../APK_Details.txt",1).replace("Main_Activity:","").replace(" ", "");
                        this_Helper.Print("Main:"+public_variable_mainactivity);
                        int lastPeriodIndex = public_variable_mainactivity.lastIndexOf(".");
                        String this_package = public_variable_mainactivity.substring(0, lastPeriodIndex);
                        // this_Helper.Print("Result:"+this_package);
                        public_variable_string_class_to_inject_adlistener = this_package+"."+"TestClass";
                        public_variable_string_class_to_inject = this_package+"."+"TestClass";
                        public_variable_string_class_to_inject2 = this_package+"."+"TestClass$1";
                        
                        InjectNewClass_AdListenerClass2(); 
                        InjectNewClass_AdListenerClass1();
                        boolean_injected_classes = true;
                        // Try to cast to the class where getadunitid exists
                        // Inject_Calls_Into_MainActivity();
                    }
                });

            }
        }));   
        soot.Main.main(args);
    }       
}