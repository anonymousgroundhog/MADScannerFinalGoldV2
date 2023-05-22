import java.util.*;
import java.io.*;
import java.lang.*;

import soot.*;
import soot.jimple.*;
import soot.util.*;
import soot.jimple.internal.*;
import soot.jimple.*;
import soot.jimple.internal.JAssignStmt.*;

public class SootInstrumentationHelper
{
    public static Local Generate_Local(Body this_body, LocalGenerator this_local_generator, String string_this_local){
        Boolean contains_local = false;
        Local local_to_return = null;
        for (Local local : this_body.getLocals()) {
            if (local.getType().toString().contains(string_this_local)) {
                contains_local = true;
                local_to_return = local;
            }
        }
        if(!contains_local){
            local_to_return = this_local_generator.generateLocal(RefType.v(string_this_local));
        }

        return local_to_return;
    }
    public static String publicVariableStringClassToInject = "com.google.android.gms.example.bannerexample.TestClassAdViewAdListenerTesting";
    public static String Read_Nth_Line(String filePath, int lineNumber){
        String line = null;
        BufferedReader reader = null;
        
        try {
            reader = new BufferedReader(new FileReader(filePath));
            for (int i = 1; i <= lineNumber; i++) {
                line = reader.readLine();
                if (line == null) {
                    break;  // Line number exceeds file length
                }
            }
        } catch (IOException e) {
            // Handle any potential IO exceptions
            e.printStackTrace();
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return line;
    }
    public static void Print(String stringvalue){
        System.out.println(stringvalue);
    }
    // public static void InjectNewClass()
    // {
        
    //         SootMethod sootmethod;
    //         publicVariableSootClass = new SootClass(publicVariableStringClassToInject);

    //         publicVariableSootClass.setSuperclass(Scene.v().getSootClass("com.google.android.gms.ads.AdListener"));
    //         Scene.v().addClass(publicVariableSootClass);
    //         publicVariableSootClass.setApplicationClass();
    //         //CREATE FIELD: final com.google.android.gms.example.bannerexample.MyActivity this$0;
    //         sootUtil.AddFinalFieldToSootClass(publicVariableSootClass, "this$0", publicVariableStringClassToInjectAdlistener);

    //         sootmethod = new SootMethod("<init>", Arrays.asList(new Type[] {RefType.v(publicVariableStringClassToInjectAdlistener)}), VoidType.v());
    //         publicVariableSootClass.addMethod(sootmethod);

    //         JimpleBody newbody = InitBody(sootmethod);
    //         sootmethod.setActiveBody(newbody);

    //         // Generate method public void onAdClicked()
    //         SootMethod sootmethod_onAdClicked = new SootMethod("onAdClicked", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
    //         publicVariableSootClass.addMethod(sootmethod_onAdClicked);

    //         // Set method source for all methods
    //         ClassLiteralMethodSourceonAdClicked sootmethodsource = new ClassLiteralMethodSourceonAdClicked();
    //         sootmethodsource.publicVariableStringClassToInject = publicVariableStringClassToInject;
    //         sootmethodsource.sootclass = publicVariableSootClass;
    //         sootmethodsource.strMethodToInject = "void onAdClicked()";
    //         sootmethod_onAdClicked.setSource(sootmethodsource);

    //         // Generate method public void onAdClosed()
    //         sootmethodsource = new ClassLiteralMethodSourceonAdClicked();
    //         sootmethodsource.publicVariableStringClassToInject = publicVariableStringClassToInject;
    //         sootmethodsource.sootclass = publicVariableSootClass;
    //         sootmethodsource.strMethodToInject = "void onAdClosed()";
    //         SootMethod sootmethod_onAdClosed = new SootMethod("onAdClosed", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
    //         publicVariableSootClass.addMethod(sootmethod_onAdClosed);            
    //         sootmethod_onAdClosed.setSource(sootmethodsource);

    //         //Generate void onAdImpression()
    //         sootmethodsource = new ClassLiteralMethodSourceonAdClicked();
    //         sootmethodsource.publicVariableStringClassToInject = publicVariableStringClassToInject;
    //         sootmethodsource.sootclass = publicVariableSootClass;
    //         sootmethodsource.strMethodToInject = "void onAdImpression()";
    //         SootMethod sootmethod_onAdImpression = new SootMethod("onAdImpression", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
    //         publicVariableSootClass.addMethod(sootmethod_onAdImpression);            
    //         sootmethod_onAdImpression.setSource(sootmethodsource);

    //         //Generate void onAdLoaded()
    //         sootmethodsource = new ClassLiteralMethodSourceonAdClicked();
    //         sootmethodsource.publicVariableStringClassToInject = publicVariableStringClassToInject;
    //         sootmethodsource.sootclass = publicVariableSootClass;
    //         sootmethodsource.strMethodToInject = "void onAdLoaded()";
    //         SootMethod sootmethod_onAdLoaded = new SootMethod("onAdLoaded", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
    //         publicVariableSootClass.addMethod(sootmethod_onAdLoaded);            
    //         sootmethod_onAdLoaded.setSource(sootmethodsource);

    //         //Generate void onAdOpened()
    //         sootmethodsource = new ClassLiteralMethodSourceonAdClicked();
    //         sootmethodsource.publicVariableStringClassToInject = publicVariableStringClassToInject;
    //         sootmethodsource.sootclass = publicVariableSootClass;
    //         sootmethodsource.strMethodToInject = "void onAdOpened()";
    //         SootMethod sootmethod_onAdOpened = new SootMethod("onAdOpened", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
    //         publicVariableSootClass.addMethod(sootmethod_onAdOpened);            
    //         sootmethod_onAdOpened.setSource(sootmethodsource);
    //     Print("Finished Injecting New Class");
    // }
    public static JimpleBody InitBody(SootMethod sootmethod){
            // SootUtil sootUtil = new SootUtil();
            JimpleBody newbody = Jimple.v().newBody(sootmethod);

            sootmethod.setActiveBody(newbody);
            // Chain sootunits = newbody.getUnits();
            // Local argument1, argument2;

            // argument1 = Jimple.v().newLocal("r0", RefType.v(publicVariableStringClassToInject)); //ERRORS out if you use $20 instead of $2
            // newbody.getLocals().add(argument1);
            // argument2 = Jimple.v().newLocal("$r1", RefType.v("com.google.android.gms.example.bannerexample.MyActivity"));
            // newbody.getLocals().add(argument2);

            // // Generate r0 := @this: com.google.android.gms.example.bannerexample.MyActivity$2;
            // IdentityStmt thisStmt = sootUtil.NewIdentityStmtParameterRefThis(publicVariableStringClassToInject, 0, argument1);
            // sootunits.add(thisStmt);

            // //Generate $r1 := @parameter0: com.google.android.gms.example.bannerexample.MyActivity;
            // sootunits.add(sootUtil.NewIdentityStmtParameterRef(publicVariableStringClassToInjectAdlistener, 0, argument2));


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
    public static void Inject_New_Class_And_Methods_AdListener(){
        Scene.v().loadClassAndSupport("java.lang.System");
        SootClass sClass = new SootClass("Testing", Modifier.PUBLIC);
        sClass.setSuperclass(Scene.v().getSootClass("java.lang.Object"));
        Scene.v().addClass(sClass); 
        sClass.setApplicationClass();

        SootMethod sootmethod = Scene.v().makeSootMethod("<init>", new ArrayList(), VoidType.v(), Modifier.PUBLIC);
        sClass.addMethod(sootmethod);
        // JimpleBody newbody = InitBody(sootmethod);
        // sootmethod.setActiveBody(newbody);
        // SootMethod sootmethod = new SootMethod("<init>", Arrays.asList(), VoidType.v());
        // JimpleBody newbody = Jimple.v().newBody(sootmethod);
        // sootmethod.setActiveBody(newbody);
        // Local arg = Jimple.v().newLocal("l0", ArrayType.v(RefType.v("java.lang.String"), 1));
        // newbody.getLocals().add(arg);
        // Print(sootmethod.toString());
        Print("Created Class!!!");
    }
    public static SootField FieldRef_Has_Adview(Chain<SootField> class_soot_fields){
        for (SootField field: class_soot_fields){
            // Print("Field:"+field.getType().toString());
            if(! field.getType().toString().contains("OnAdManagerAdViewLoadedListener") && ! field.getType().toString().contains("AdManagerAdViewOptions") && field.getType().toString().contains("AdManagerAdView") || field.getType().toString().contains("BaseAdView") || field.getType().toString().contains("AdView")){
                return field;
            }
        }
        return null;
    }
    public static Type Method_Has_Parameter_Adview(List<Type> method_soot_types){
        for (Type type: method_soot_types){
            if(! type.toString().contains("OnAdManagerAdViewLoadedListener") &&  ! type.toString().contains("AdManagerAdViewOptions") && type.toString().contains("AdManagerAdView") || type.toString().contains("BaseAdView") || type.toString().contains("AdView")){
                return type;
            }
        }
        return null;
    }
    public static SootClass Method_Has_SuperClass_Adview(SootClass this_class){
        if(this_class.hasSuperclass()){
            String super_class_name = this_class.getSuperclass().getName();
            if(super_class_name.contains("adView") || super_class_name.contains("BaseAdView") || super_class_name.contains("AdManagerAdView")){
                return this_class.getSuperclass();
            }
        }
        return null;
    }
    public static Unit ReturnUnitToInjectAfter(UnitPatchingChain thisunits){
        Unit LastKnownUnit = null;
        for (Iterator<Unit> unit = thisunits.snapshotIterator(); unit.hasNext();) {
            LastKnownUnit = unit.next();
            if(LastKnownUnit instanceof JInvokeStmt){
                return(LastKnownUnit);
            }
        }
        return null;
    }
    public static void Inject_Log_Generic(String this_class_name, String this_method_name, UnitPatchingChain thisunits){
        SootMethodRef method_ref_log = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef();
        // UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
        String MSG = this_class_name+"---"+this_method_name+"---null";
        List<Value> listArgs = new ArrayList<Value>();
        listArgs.add(StringConstant.v("FiniteState"));
        listArgs.add(StringConstant.v(MSG));
        StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(method_ref_log, listArgs);
        InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
        Unit unit_to_insert_after = ReturnUnitToInjectAfter(thisunits);

        if(unit_to_insert_after != null){
            // Print("Injected log");
            thisunits.insertAfter(InvokeStatementLog, unit_to_insert_after);
        } 
    }
    public static void Inject_Log_Not_Supported(String this_class_name, String this_method_name, UnitPatchingChain thisunits){
        SootMethodRef method_ref_log = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef();
        // UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
        String MSG = this_class_name+"---"+this_method_name+" Not Supported---null";
        List<Value> listArgs = new ArrayList<Value>();
        listArgs.add(StringConstant.v("FiniteState"));
        listArgs.add(StringConstant.v(MSG));
        StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(method_ref_log, listArgs);
        InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
        Unit unit_to_insert_after = ReturnUnitToInjectAfter(thisunits);

        if(unit_to_insert_after != null){
            // Print("Injected log");
            thisunits.insertAfter(InvokeStatementLog, unit_to_insert_after);
        } 
    }
    public static void Inject_Log_FieldRef(String this_class_name, String this_method_name, String this_fieldref_name,UnitPatchingChain thisunits){
        SootMethodRef method_ref_log = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef();
        // UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
        String MSG = this_class_name+"---"+this_method_name+"---"+this_fieldref_name+" Has Field Ref---null";
        List<Value> listArgs = new ArrayList<Value>();
        listArgs.add(StringConstant.v("FiniteState"));
        listArgs.add(StringConstant.v(MSG));
        StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(method_ref_log, listArgs);
        InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
        Unit unit_to_insert_after = ReturnUnitToInjectAfter(thisunits);

        if(unit_to_insert_after != null){
            // Print("Injected log");
            thisunits.insertAfter(InvokeStatementLog, unit_to_insert_after);
        } 
    }
    public static void Inject_Log_Parameters(String this_class_name, String this_method_name, String this_method_type, UnitPatchingChain thisunits){
        SootMethodRef method_ref_log = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef();
        // UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
        String MSG = this_class_name+"---"+this_method_name+"---"+this_method_type+"---Has Parameters---null";
        List<Value> listArgs = new ArrayList<Value>();
        listArgs.add(StringConstant.v("FiniteState"));
        listArgs.add(StringConstant.v(MSG));
        StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(method_ref_log, listArgs);
        InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
        Unit unit_to_insert_after = ReturnUnitToInjectAfter(thisunits);

        if(unit_to_insert_after != null){
            // Print("Injected log");
            thisunits.insertAfter(InvokeStatementLog, unit_to_insert_after);
        } 
    }
    public static void Inject_Log_SuperClass(String this_class_name, String this_method_name, String this_superclass, UnitPatchingChain thisunits){
        SootMethodRef method_ref_log = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef();
        // UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
        String MSG = this_class_name+"---"+this_method_name+"---"+this_superclass+"---Has Superclass---null";
        List<Value> listArgs = new ArrayList<Value>();
        listArgs.add(StringConstant.v("FiniteState"));
        listArgs.add(StringConstant.v(MSG));
        StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(method_ref_log, listArgs);
        InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
        Unit unit_to_insert_after = ReturnUnitToInjectAfter(thisunits);

        if(unit_to_insert_after != null){
            // Print("Injected log");
            thisunits.insertAfter(InvokeStatementLog, unit_to_insert_after);
        } 
    }
}