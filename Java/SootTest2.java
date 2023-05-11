import java.util.*;
import java.io.*;
import java.lang.*;

import soot.*;
import soot.jimple.*;
import soot.util.*;
import soot.jimple.internal.*;
import soot.jimple.*;
import soot.jimple.internal.JAssignStmt.*;

public class SootTest2
{
    
    public static void Print(String stringvalue){
        System.out.println(stringvalue);
    }
    public static SootField FieldRef_Has_Adview(Chain<SootField> class_soot_fields){
        for (SootField field: class_soot_fields){
            // Print("Field:"+field.getType().toString());
            if(! field.getType().toString().contains("OnAdManagerAdViewLoadedListener") && ! field.getType().toString().contains("AdManagerAdViewOptions") && field.getType().toString().contains("AdManagerAdView") || field.getType().toString().contains("BaseAdView") || field.getType().toString().contains(".AdView")){
                return field;
            }
        }
        return null;
    }
    public static Type Method_Has_Parameter_Adview(List<Type> method_soot_types){
        for (Type type: method_soot_types){
            if(! type.toString().contains("OnAdManagerAdViewLoadedListener") &&  ! type.toString().contains("AdManagerAdViewOptions") && type.toString().contains("AdManagerAdView") || type.toString().contains("BaseAdView") || type.toString().contains(".AdView")){
                return type;
            }
        }
        return null;
    }
    public static SootClass Method_Has_SuperClass_Adview(SootClass this_class){
        if(this_class.hasSuperclass()){
            String super_class_name = this_class.getSuperclass().getName();
            if(super_class_name.contains("adView") || super_class_name.contains("BaseAdView")){
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
            Print("Injected log");
            thisunits.insertAfter(InvokeStatementLog, unit_to_insert_after);
        } 
    }
    public static void Inject_Log_FieldRef(String this_class_name, String this_method_name, String this_fieldref_name,UnitPatchingChain thisunits){
        SootMethodRef method_ref_log = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef();
        // UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
        String MSG = this_class_name+"---"+this_method_name+"---"+this_fieldref_name+"---null";
        List<Value> listArgs = new ArrayList<Value>();
        listArgs.add(StringConstant.v("FiniteState"));
        listArgs.add(StringConstant.v(MSG));
        StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(method_ref_log, listArgs);
        InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
        Unit unit_to_insert_after = ReturnUnitToInjectAfter(thisunits);

        if(unit_to_insert_after != null){
            Print("Injected log");
            thisunits.insertAfter(InvokeStatementLog, unit_to_insert_after);
        } 
    }
    public static void main(String[] sootarguments)
    {
        PackManager.v().getPack("jtp").add(new Transform("jtp.myInstrumenter", new BodyTransformer()
        {
            @Override
            protected void internalTransform(final Body body, String phaseName, @SuppressWarnings("rawtypes") Map options)
            {               
                
                SootClass this_class = body.getMethod().getDeclaringClass();
                SootMethod this_method = body.getMethod();
                List<Type> method_types = this_method.getParameterTypes();
                String this_class_name = this_class.getName();
                Chain<SootField> class_soot_fields = this_class.getFields();
                String this_method_name = this_method.getName();
                UnitPatchingChain thisunits = body.getUnits();
                SootField this_class_has_fieldref_adview = FieldRef_Has_Adview(class_soot_fields);
                SootClass this_class_superclass = Method_Has_SuperClass_Adview(this_class);
                if(this_class_has_fieldref_adview != null){
                    Print("SootClass:"+this_class_name + "\nMethod:"+this_method_name);
                    Inject_Log_FieldRef(this_class_name, this_method_name, this_class_has_fieldref_adview.getName(), thisunits);
                }
            }   
        }));
        soot.Main.main(sootarguments);
    }
}