import java.io.*;
import java.util.*;
import soot.options.Options;
import soot.*;
import soot.jimple.*;
import soot.jimple.internal.*;
import soot.Scene;
import soot.util.*;

public class SootTest {
    public static String hash = null;
    public static void Print(String stringvalue){
        System.out.println(stringvalue);
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
    public static boolean FieldRef_Has_Adview(Chain<SootField> class_soot_fields){

        for (SootField field: class_soot_fields){
            if(field.getType().toString().contains("BaseAdView") || field.getType().toString().contains(".AdView")){
                // Print("Field: " + field.toString() + " " + field.getType());
                return true;
            }
        }
        return false;
    }

    public static boolean Method_Has_Parameter_Adview(List<Type> method_soot_types){

        for (Type type: method_soot_types){
            if(type.toString().contains("BaseAdView") || type.toString().contains(".AdView")){
                // Print("Field: " + field.toString() + " " + field.getType());
                return true;
            }
        }
        return false;
    }
    public static void main(String[] sootarguments) {
        // Initialize Soot
        String[] app_name =  sootarguments[0].split("/");
        String app_name_only = app_name[app_name.length-1].replace(".apk", "");
        // G.v().reset();
        Options.v().set_no_writeout_body_releasing(true);
        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_allow_phantom_refs(true);
        Options.v().set_output_dir("../sootOutput/"+app_name_only);
        Options.v().set_process_dir(Arrays.asList("../../APK/"+app_name_only+".apk"));
        Options.v().set_android_jars("../../Android/platforms");
        Options.v().set_process_multiple_dex(true);
        Options.v().set_whole_program(true);
        Scene.v().loadNecessaryClasses();
        // PackManager.v().runPacks();
        PackManager.v().writeOutput();
         Map<String, List<String>> class_to_static_methods = new HashMap<>();
        hash = sootarguments[2];
        Scene this_Scene = Scene.v();
        SootMethodRef method_ref_log = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef();
        Print("Running Soot!!!");
        Chain<SootClass> classes = this_Scene.getClasses();
        
        for (SootClass this_class : classes) {
            List<SootMethod> methods = this_class.getMethods();
            Chain<SootField> class_soot_fields = this_class.getFields();
            // boolean class_has_sootfield_adview = FieldRef_Has_Adview(class_soot_fields);
            // if(FieldRef_Has_Adview(class_soot_fields)){
            //     Print("Class:"+this_class.getName() + " Fields:" + class_soot_fields.toString());
            // }
            for(SootMethod this_method : methods){
                List<Type> method_types = this_method.getParameterTypes();
                if(this_method.getName().contains("onCreate") && this_class.getName().contains(sootarguments[1])){
                    UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
                    String MSG = app_name_only+"---"+hash+"---"+this_class.getName()+"---"+this_method.getName()+"---null";
                    List<Value> listArgs = new ArrayList<Value>();
                    listArgs.add(StringConstant.v("FiniteState"));
                    listArgs.add(StringConstant.v(MSG));
                    StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(method_ref_log, listArgs);
                    InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
                    Unit unit_to_insert_after = ReturnUnitToInjectAfter(thisunits);

                    if(unit_to_insert_after != null){
                        thisunits.insertAfter(InvokeStatementLog, unit_to_insert_after);
                    }
                }
                // else if(this_method.hasActiveBody() && this_method.isStatic() && !this_method.isEntryMethod() && this_class.isApplicationClass() && (class_has_sootfield_adview || Method_Has_Parameter_Adview(method_types))){
                else if(this_method.isStatic() && this_method.getSource() != null && !this_method.isEntryMethod() && this_class.isApplicationClass() && (FieldRef_Has_Adview(class_soot_fields) || Method_Has_Parameter_Adview(method_types))){
                    Print("Class:"+ this_class.getName() + " " +"Method:" + this_method.getName());
                    UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
                    String MSG = ""+app_name_only+"---"+hash+"---"+this_class.getName()+"---"+this_method.getName()+"(Static Method)---null";
                    List<Value> listArgs = new ArrayList<Value>();
                    listArgs.add(StringConstant.v("FiniteState"));
                    listArgs.add(StringConstant.v(MSG));
                    StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(method_ref_log, listArgs);
                    InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
                    Unit unit_to_insert_after = ReturnUnitToInjectAfter(thisunits);
                    if(unit_to_insert_after != null){
                        thisunits.insertAfter(InvokeStatementLog, unit_to_insert_after);
                    }     
                }
                // else if(this_class.hasSuperclass() && 
                //     (this_class.getSuperclass().getName().contains("com.google.android.gms.ads.BaseAdView") || this_class.getSuperclass().getName().contains("com.google.android.gms.ads.adView"))){           
                //      UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
                //     String MSG = ""+app_name_only+"---"+hash+"---"+this_class.getName()+"---"+this_method.getName()+"---null";
                //     List<Value> listArgs = new ArrayList<Value>();
                //     listArgs.add(StringConstant.v("FiniteState"));
                //     listArgs.add(StringConstant.v(MSG));
                //     StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(method_ref_log, listArgs);
                //     InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
                //     Unit unit_to_insert_after = ReturnUnitToInjectAfter(thisunits);
                //     if(unit_to_insert_after != null){
                //         thisunits.insertAfter(InvokeStatementLog, unit_to_insert_after);
                //     }
                // }
            }
        }  
        soot.Main.main(sootarguments);
    }
}