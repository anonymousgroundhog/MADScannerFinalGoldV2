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
    public static void Inject_New_Class_And_Methods_AdListener(){
        SootClass sClass = new SootClass("TestClassAdViewAdListener", Modifier.PUBLIC);
        sClass.setSuperclass(Scene.v().getSootClass("java.lang.Object"));
        Scene.v().addClass(sClass); 
        sClass.setApplicationClass();
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