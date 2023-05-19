import soot.*;
import soot.jimple.*;
import soot.util.*;
import soot.javaToJimple.*;
import soot.options.Options;
import java.io.*;
import java.util.*;
import soot.jimple.internal.JAssignStmt.LinkedVariableBox;
import soot.jimple.internal.JAssignStmt.LinkedRValueBox;
import soot.jimple.internal.*;
public class SootTest3
{
    private static SootClass public_variable_soot_class;
    private static String public_variable_string_class_to_inject_adlistener = "TestClass";
    private static String public_variable_string_class_to_inject = "TestClass";
    private static String public_variable_string_class_to_inject2 = "TestClass$1";
    
    public static void InjectNewClass_AdListenerClass1(){
        SootInstrumentationHelper this_Helper = new SootInstrumentationHelper();
        this_Helper.Print("Injecting New Class");
        SootUtil this_soot_util = new SootUtil();
        boolean this_adlistener_exists = Scene.v().getApplicationClasses().toString().contains("com.google.android.gms.ads.AdListener");
        if(this_adlistener_exists)
        {
            SootMethod this_soot_method = null;
            public_variable_soot_class = new SootClass(public_variable_string_class_to_inject);
            public_variable_soot_class.setSuperclass(Scene.v().getSootClass("java.lang.Object"));
            Scene.v().addClass(public_variable_soot_class);
            public_variable_soot_class.setApplicationClass();
            
            this_soot_method = new SootMethod("<init>", Arrays.asList(), VoidType.v());
            public_variable_soot_class.addMethod(this_soot_method);
            // Set method source for Init
            ClassLiteralMethodSourceonInitFirst this_soot_method_source_init = new ClassLiteralMethodSourceonInitFirst();
            this_soot_method_source_init.public_string_class_to_inject = public_variable_soot_class.getName();
            this_soot_method_source_init.this_soot_class = public_variable_soot_class;
            this_soot_method_source_init.this_string_method_to_inject = "void <init>";
            this_soot_method.setSource(this_soot_method_source_init);

            // this_method_arguments = Collections.<Value>emptyList();
            this_soot_method = new SootMethod("setAdListener", Arrays.asList(new Type[] {RefType.v("com.google.android.gms.ads.admanager.AdManagerAdView")}), VoidType.v());
            public_variable_soot_class.addMethod(this_soot_method);
            // Set method source for setAdListener
            ClassLiteralMethodSourceSetAdListener this_soot_method_source_setAdListener = new ClassLiteralMethodSourceSetAdListener();
            this_soot_method_source_setAdListener.public_string_class_to_inject = public_variable_string_class_to_inject_adlistener;
            this_soot_method_source_setAdListener.this_soot_class = public_variable_soot_class;
            this_soot_method_source_setAdListener.this_string_method_to_inject = "void <init>";
            this_soot_method.setSource(this_soot_method_source_setAdListener);
        }
    }
    public static void InjectNewClass_AdListenerClass2()
    {
        SootInstrumentationHelper this_Helper = new SootInstrumentationHelper();
        this_Helper.Print("Injecting New Class");
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
            this_soot_util.AddFinalFieldToSootClass(public_variable_soot_class
, "this$0", public_variable_string_class_to_inject_adlistener);

            // CREATE FIELD: final com.google.android.gms.ads.admanager.AdManagerAdView val$adView;
            // SootClass this_class_admanageradview = Scene.v().getSootClass("com.google.android.gms.ads.admanager.AdManagerAdView");
            this_soot_util.AddFinalFieldToSootClass(public_variable_soot_class
, "val$adView", "com.google.android.gms.ads.admanager.AdManagerAdView");

            this_soot_method = new SootMethod("<init>", Arrays.asList(new Type[] {RefType.v(public_variable_string_class_to_inject_adlistener
), RefType.v("com.google.android.gms.ads.admanager.AdManagerAdView")}), VoidType.v());
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

            // // Generate method public void onAdClosed() and set source
            // // this_soot_methodsource = new ClassLiteralMethodSourceonAdClicked();
            // this_soot_methodsource.public_variable_string_class_to_inject = public_variable_string_class_to_inject;
            // this_soot_methodsource.sootclass = public_variable_soot_class
;
            // this_soot_methodsource.strMethodToInject = "void onAdClosed()";
            // SootMethod this_soot_method_onAdClosed = new SootMethod("onAdClosed", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            // public_variable_soot_class.addMethod(this_soot_method_onAdClosed);            
            // this_soot_method_onAdClosed.setSource(this_soot_methodsource);

            // //Generate void onAdImpression()
            // // this_soot_methodsource = new ClassLiteralMethodSourceonAdClicked();
            // this_soot_methodsource.public_variable_string_class_to_inject = public_variable_string_class_to_inject;
            // this_soot_methodsource.sootclass = public_variable_soot_class
;
            // this_soot_methodsource.strMethodToInject = "void onAdImpression()";
            // SootMethod this_soot_method_onAdImpression = new SootMethod("onAdImpression", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            // public_variable_soot_class.addMethod(this_soot_method_onAdImpression);            
            // this_soot_method_onAdImpression.setSource(this_soot_methodsource);

            // //Generate void onAdLoaded()
            // // this_soot_methodsource = new ClassLiteralMethodSourceonAdClicked();
            // this_soot_methodsource.public_variable_string_class_to_inject = public_variable_string_class_to_inject;
            // this_soot_methodsource.sootclass = public_variable_soot_class
;
            // this_soot_methodsource.strMethodToInject = "void onAdLoaded()";
            // SootMethod this_soot_method_onAdLoaded = new SootMethod("onAdLoaded", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            // public_variable_soot_class.addMethod(this_soot_method_onAdLoaded);            
            // this_soot_method_onAdLoaded.setSource(this_soot_methodsource);

            // //Generate void onAdOpened()
            // // this_soot_methodsource = new ClassLiteralMethodSourceonAdClicked();
            // this_soot_methodsource.public_variable_string_class_to_inject = public_variable_string_class_to_inject;
            // this_soot_methodsource.sootclass = public_variable_soot_class
;
            // this_soot_methodsource.strMethodToInject = "void onAdOpened()";
            // SootMethod this_soot_method_onAdOpened = new SootMethod("onAdOpened", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            // public_variable_soot_class.addMethod(this_soot_method_onAdOpened);            
            // this_soot_method_onAdOpened.setSource(this_soot_methodsource);
        }
        this_Helper.Print("Finished Injecting New Class");
    }

    public static void InstrumentationTesting(Body b){
        JimpleBody body = (JimpleBody) b;
        SootMethod currentMethod = body.getMethod();
        SootClass currentClass = currentMethod.getDeclaringClass();
        if(currentClass.getName().contains("TestClassAdViewAdListener$1") && currentMethod.getName().contains("onAdClicked")){
            System.out.println("Class " + currentClass.getName() + " Method "+ currentMethod.getName());
            Iterator<Unit> it = body.getUnits().iterator();
            while (it.hasNext()) {
                Unit unit = it.next();
                if(unit.getUseBoxes().size() > 0 && unit.getUseBoxes().get(0).getValue() instanceof VirtualInvokeExpr){
                    VirtualInvokeExpr this_virtualInvoke = (VirtualInvokeExpr) unit.getUseBoxes().get(0).getValue();
                    if(this_virtualInvoke.getMethod().getName().contains("getAdUnitId")){
                        System.out.println("Unit " + this_virtualInvoke.getMethodRef().toString());
                        System.out.println(this_virtualInvoke.getArgs().toString()); 
                    }
                }
            }
        }
    }

    public static void main(String[] args) throws FileNotFoundException, IOException
    {
        // setupSoot("../../Android/platforms", "../../APK/"+args[0], "../sootOutput");
        Once once = new Once();
        SootInstrumentationHelper this_Helper = new SootInstrumentationHelper();
        PackManager.v().getPack("jtp").add(new Transform("jtp.myLogger", new BodyTransformer() {
            @Override
            protected void internalTransform(Body b, String phaseName, Map<String, String> options) {
                Options.v().set_no_writeout_body_releasing(true);
                // InstrumentationTesting(b);
                once.run(new Runnable() {
                    @Override
                    public void run() {
                        InjectNewClass_AdListenerClass2(); 
                        InjectNewClass_AdListenerClass1();
                        // Try to cast to the class where getadunitid exists
                    }
                });
            }
        }));   
        soot.Main.main(args);
    }       
}