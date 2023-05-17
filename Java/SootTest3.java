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
    private static SootClass publicVariableSootClass;
    private static String publicVariableStringClassToInjectAdlistener = "com.google.android.gms.example.bannerexample.Testing";
    private static String publicVariableStringClassToInject = "TestClass$1";

    public static void InjectNewClass()
    {
        SootInstrumentationHelper thisHelper = new SootInstrumentationHelper();
        thisHelper.Print("Injecting New Class");
        SootUtil sootUtil = new SootUtil();
        boolean AdListenerExists = Scene.v().getApplicationClasses().toString().contains("com.google.android.gms.ads.AdListener");
        if(AdListenerExists)
        {
            SootMethod sootmethod;
            publicVariableSootClass = new SootClass(publicVariableStringClassToInject);

            publicVariableSootClass.setSuperclass(Scene.v().getSootClass("com.google.android.gms.ads.AdListener"));
            Scene.v().addClass(publicVariableSootClass);
            publicVariableSootClass.setApplicationClass();
            //CREATE FIELD: final com.google.android.gms.example.bannerexample.MyActivity this$0;
            sootUtil.AddFinalFieldToSootClass(publicVariableSootClass, "this$0", publicVariableStringClassToInjectAdlistener);

            // CREATE FIELD: final com.google.android.gms.ads.admanager.AdManagerAdView val$adView;
            SootClass classAdManagerAdView = Scene.v().getSootClass("com.google.android.gms.ads.admanager.AdManagerAdView");
            sootUtil.AddFinalFieldToSootClass(publicVariableSootClass, "val$adView", "com.google.android.gms.ads.admanager.AdManagerAdView");

            sootmethod = new SootMethod("<init>", Arrays.asList(new Type[] {RefType.v(publicVariableStringClassToInjectAdlistener), RefType.v("com.google.android.gms.ads.admanager.AdManagerAdView")}), VoidType.v());
            publicVariableSootClass.addMethod(sootmethod);

            // Set method source for Init
            ClassLiteralMethodSourceonInit sootmethodsourceinit = new  ClassLiteralMethodSourceonInit();
            sootmethodsourceinit.strClassToInject = publicVariableSootClass.getName();
            sootmethodsourceinit.sootclass = publicVariableSootClass;
            sootmethodsourceinit.strMethodToInject = "void <init>";
            sootmethod.setSource(sootmethodsourceinit);

            // Generate method public void onAdClicked()
            SootMethod sootmethod_onAdClicked = new SootMethod("onAdClicked", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            publicVariableSootClass.addMethod(sootmethod_onAdClicked);
            
            // // Set method source for onAdClicked
            ClassLiteralMethodSourceonAdClicked sootmethodsource = new ClassLiteralMethodSourceonAdClicked();
            sootmethodsource.strClassToInject = publicVariableSootClass.getName();
            sootmethodsource.publicVariableStringClassToInject = publicVariableStringClassToInject;
            sootmethodsource.sootclass = publicVariableSootClass;
            sootmethodsource.strMethodToInject = "void onAdClicked()";
            sootmethod_onAdClicked.setSource(sootmethodsource);

            // // Generate method public void onAdClosed() and set source
            // // sootmethodsource = new ClassLiteralMethodSourceonAdClicked();
            // sootmethodsource.publicVariableStringClassToInject = publicVariableStringClassToInject;
            // sootmethodsource.sootclass = publicVariableSootClass;
            // sootmethodsource.strMethodToInject = "void onAdClosed()";
            // SootMethod sootmethod_onAdClosed = new SootMethod("onAdClosed", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            // publicVariableSootClass.addMethod(sootmethod_onAdClosed);            
            // sootmethod_onAdClosed.setSource(sootmethodsource);

            // //Generate void onAdImpression()
            // // sootmethodsource = new ClassLiteralMethodSourceonAdClicked();
            // sootmethodsource.publicVariableStringClassToInject = publicVariableStringClassToInject;
            // sootmethodsource.sootclass = publicVariableSootClass;
            // sootmethodsource.strMethodToInject = "void onAdImpression()";
            // SootMethod sootmethod_onAdImpression = new SootMethod("onAdImpression", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            // publicVariableSootClass.addMethod(sootmethod_onAdImpression);            
            // sootmethod_onAdImpression.setSource(sootmethodsource);

            // //Generate void onAdLoaded()
            // // sootmethodsource = new ClassLiteralMethodSourceonAdClicked();
            // sootmethodsource.publicVariableStringClassToInject = publicVariableStringClassToInject;
            // sootmethodsource.sootclass = publicVariableSootClass;
            // sootmethodsource.strMethodToInject = "void onAdLoaded()";
            // SootMethod sootmethod_onAdLoaded = new SootMethod("onAdLoaded", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            // publicVariableSootClass.addMethod(sootmethod_onAdLoaded);            
            // sootmethod_onAdLoaded.setSource(sootmethodsource);

            // //Generate void onAdOpened()
            // // sootmethodsource = new ClassLiteralMethodSourceonAdClicked();
            // sootmethodsource.publicVariableStringClassToInject = publicVariableStringClassToInject;
            // sootmethodsource.sootclass = publicVariableSootClass;
            // sootmethodsource.strMethodToInject = "void onAdOpened()";
            // SootMethod sootmethod_onAdOpened = new SootMethod("onAdOpened", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            // publicVariableSootClass.addMethod(sootmethod_onAdOpened);            
            // sootmethod_onAdOpened.setSource(sootmethodsource);
        }
        thisHelper.Print("Finished Injecting New Class");
    }

    public static void main(String[] args) throws FileNotFoundException, IOException
    {
        // setupSoot("../../Android/platforms", "../../APK/"+args[0], "../sootOutput");
        Once once = new Once();
        SootInstrumentationHelper thisHelper = new SootInstrumentationHelper();
        PackManager.v().getPack("jtp").add(new Transform("jtp.myLogger", new BodyTransformer() {
            @Override
            protected void internalTransform(Body b, String phaseName, Map<String, String> options) {
                Options.v().set_no_writeout_body_releasing(true);
                JimpleBody body = (JimpleBody) b;
                SootMethod currentMethod = body.getMethod();
                SootClass currentClass = currentMethod.getDeclaringClass();
                if(currentClass.getName().contains("TestClassAdViewAdListener$1") && currentMethod.getName().contains("onAdClicked")){
                    System.out.println("Class " + currentClass.getName() + " Method "+ currentMethod.getName());
                    Iterator<Unit> it = body.getUnits().iterator();
                    while (it.hasNext()) {
                        Unit unit = it.next();
                        if(unit.getUseBoxes().size() > 0 && unit.getUseBoxes().get(0).getValue() instanceof VirtualInvokeExpr){
                            // VirtualInvokeExpr = unit.getUnitBoxes()
                            System.out.println("Unit " + unit.getUseBoxes().get(0).getValue().toString()); 
                        }
                    }
                }
                once.run(new Runnable() {
                    @Override
                    public void run() {
                        // InjectNewClass();
                    }
                });
            }
        }));   
        soot.Main.main(args);
    }
        
}
