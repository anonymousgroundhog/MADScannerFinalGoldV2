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
    // private static MethodSource createMethodSource(SootMethod method) {
    //     PrivateFieldAccMethodSource src = new PrivateFieldAccMethodSource(Util.getSootType(li.type()), "val$" + li.name(), false, classToInvoke);
    //     method.setActiveBody(src.getBody(meth, null));

    //     return src.getActiveBody();
    // }
    private static SootClass publicVariableSootClass;
    private static String publicVariableStringClassToInjectAdlistener = "com.google.android.gms.example.bannerexample.Testing";
    private static String publicVariableAdManagerAdView = "com.google.android.gms.ads.admanager.AdManagerAdView";
    private static String publicVariableStringClassToInject = "TestClass$1";
    

    public static SootMethod addInitMethod(SootClass staticCounterClass){
        SootMethod initMethod = Scene.v().makeSootMethod("<init>",
                Arrays.asList(new Type[]{}),
                VoidType.v(), Modifier.PUBLIC);
        staticCounterClass.addMethod(initMethod);
        JimpleBody body = Jimple.v().newBody(initMethod);
        String content = String.format("Units are %s", body.getUnits().toString());
        System.out.println(content);
        // initMethod.setActiveBody(body);
        
        return initMethod;
    }
    public static SootClass createAdListenerClass(String packageName) {
        // The new class must be inside the APK package.
        String staticCounterSignature =  packageName+".SootListener";
        SootClass staticCounterClass = new SootClass(staticCounterSignature, Modifier.PUBLIC);
        // SootClass staticCounterClass = Scene.v().addClass(staticCounterSignature, Modifier.PUBLIC);
        staticCounterClass.setSuperclass(Scene.v().getSootClass("java.lang.Object"));
        staticCounterClass.setApplicationClass();
        return staticCounterClass;
    }
    public static AssignStmt newAssignStmt(Value variable, Value rightvalue){
        return new JAssignStmt(variable, rightvalue);
    }
    public static void setMethodSource(SootMethod method) {
        ClassLiteralMethodSource mSrc = new ClassLiteralMethodSource();
        method.setSource(mSrc);
    }
    public static JimpleBody InitBody(SootMethod sootmethod){
            SootUtil sootUtil = new SootUtil();
            JimpleBody newbody = Jimple.v().newBody(sootmethod);
            sootmethod.setActiveBody(newbody);
            Chain sootunits = newbody.getUnits();
            Local argument1, argument2, localthisclass;
            System.out.println(publicVariableStringClassToInject.replace("$1",""));
            localthisclass = sootUtil.NewLocal("$r1", RefType.v(publicVariableStringClassToInject.replace("$1","")));
            newbody.getLocals().add(localthisclass);

            argument1 = sootUtil.NewLocal("r0", RefType.v(publicVariableStringClassToInject)); //ERRORS out if you use $20 instead of $2
            newbody.getLocals().add(argument1);
            // argument2 = sootUtil.NewLocal("$r1", RefType.v("com.google.android.gms.example.bannerexample.MyActivity"));
            // newbody.getLocals().add(argument2);
            
            argument2 = sootUtil.NewLocal("$r2",RefType.v(publicVariableAdManagerAdView));
            newbody.getLocals().add(argument2);
            // r0 := @this: com.google.android.gms.example.bannerexample.TestClassAdViewAdListener$1;
            IdentityStmt thisStmt = sootUtil.NewIdentityStmtParameterRefThis(publicVariableStringClassToInject, 0, argument1);
            sootunits.add(thisStmt);

            // Generate $r1 := @parameter0: com.google.android.gms.example.bannerexample.TestClassAdViewAdListener;
            sootunits.add(sootUtil.NewIdentityStmtParameterRef(publicVariableStringClassToInjectAdlistener.replace("$1",""), 0, localthisclass));

            // Generate  $r2 := @parameter1: com.google.android.gms.ads.admanager.AdManagerAdView;
            sootunits.add(sootUtil.NewIdentityStmtParameterRef(publicVariableAdManagerAdView, 1, argument2));
                        
            // Generate r0.<com.google.android.gms.example.bannerexample.TestClassAdViewAdListener$1: com.google.android.gms.example.bannerexample.TestClassAdViewAdListener this$0> = $r1;
            Value sootfieldref = Jimple.v().newInstanceFieldRef(thisStmt.getLeftOpBox().getValue(), publicVariableSootClass.getFieldByName("this$0").makeRef());
            AssignStmt IdentityStmtNew = newAssignStmt(sootfieldref, localthisclass);
            sootunits.add(IdentityStmtNew);

            // Generate specialinvoke r0.<com.google.android.gms.ads.AdListener: void <init>()>();
            Value valueofinterest = thisStmt.getLeftOpBox().getValue();
            SootMethodRef sootmethodofinterest = publicVariableSootClass.getSuperclass().getMethod("void <init>()").makeRef();
            List<Value> emptylist = Collections.<Value>emptyList();
            SpecialInvokeExpr specialInvokeExprAdListener = Jimple.v().newSpecialInvokeExpr(argument1,sootmethodofinterest, emptylist);
            Unit unitToAdd = Jimple.v().newInvokeStmt(specialInvokeExprAdListener);
            sootunits.add(unitToAdd);

            // Generate return;

            unitToAdd = Jimple.v().newReturnVoidStmt();
            sootunits.add(unitToAdd);
            // //GENERATE r0.<com.google.android.gms.example.bannerexample.MyActivity$2: com.google.android.gms.example.bannerexample.MyActivity this$0> = $r1;
            // Value sootfieldref = Jimple.v().newInstanceFieldRef(thisStmt.getLeftOpBox().getValue(), publicVariableSootClass.getFieldByName("this$0").makeRef());
            // AssignStmt IdentityStmtNew = newAssignStmt(sootfieldref, argument2);
            // sootunits.add(IdentityStmtNew);
            
            // //Generate specialinvoke r0.<com.google.android.gms.ads.AdListener: void <init>()>();
            // Value valueofinterest = thisStmt.getLeftOpBox().getValue();
            // SootMethodRef sootmethodofinterest = publicVariableSootClass.getSuperclass().getMethod("void <init>()").makeRef();
            // List<Value> emptylist = Collections.<Value>emptyList();
            // SpecialInvokeExpr specialInvokeExprAdListener = Jimple.v().newSpecialInvokeExpr(argument1,sootmethodofinterest, emptylist);
            // Unit unitToAdd = Jimple.v().newInvokeStmt(specialInvokeExprAdListener);
            // sootunits.add(unitToAdd);
            // sootunits.add(Jimple.v().newReturnVoidStmt());

            return newbody;
    }
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

            JimpleBody newbody = InitBody(sootmethod);
            // sootmethod.setActiveBody(newbody);

            // Generate method public void onAdClicked()
            SootMethod sootmethod_onAdClicked = new SootMethod("onAdClicked", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            publicVariableSootClass.addMethod(sootmethod_onAdClicked);

            // // Set method source for all methods
            ClassLiteralMethodSourceonAdClicked sootmethodsource = new ClassLiteralMethodSourceonAdClicked();
            sootmethodsource.strClassToInject = publicVariableSootClass.getName();
            sootmethodsource.publicVariableStringClassToInject = publicVariableStringClassToInject;
            sootmethodsource.sootclass = publicVariableSootClass;
            sootmethodsource.strMethodToInject = "void onAdClicked()";
            sootmethod_onAdClicked.setSource(sootmethodsource);

            // // Generate method public void onAdClosed()
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
                // JimpleBody body = (JimpleBody) b;
                // SootMethod currentMethod = body.getMethod();
                // SootClass currentClass = currentMethod.getDeclaringClass();
                once.run(new Runnable() {
                    @Override
                    public void run() {
                        InjectNewClass();
                    }
                });
            }
        }));   
        soot.Main.main(args);
    }
        
}
