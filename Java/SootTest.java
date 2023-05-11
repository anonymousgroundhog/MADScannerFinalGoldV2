import java.io.*;
import java.util.*;
import soot.options.Options;
import soot.*;
import soot.jimple.*;
import soot.jimple.internal.*;
import soot.Scene;
import soot.util.*;
import soot.javaToJimple.*;

public class SootTest {
    public static String hash = null;
    public static void Print(String stringvalue){
        System.out.println(stringvalue);
    }
    public static void Inject_Log_Generic(String app_name_only, String hash, String this_class_name, String this_method_name, SootMethod this_method){
        SootMethodRef method_ref_log = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef();
        UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
        String MSG = app_name_only+"---"+hash+"---"+this_class_name+"---"+this_method_name+"---null";
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
    public static LocalGenerator CreateLocalGenerator(Body b, Scene this_Scene){
        if(b != null){
            return this_Scene.createLocalGenerator(b);
        }
        return null;
    }
    public static Local CheckIfRefTypeExists(Body b, String name){
        if(b != null){
            int counter = -1;
            for (Local local : b.getLocals()) {
                counter = counter + 1;
                // Print("Local:"+local.getType().toString());
                if(local.getType().toString().contains(name)){
                    return local;
                }
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
    public static Local Method_Has_Local_Adview(SootMethod method){
        if(method.hasActiveBody()){
            for (Local local: method.retrieveActiveBody().getLocals()){
                if(! local.getType().toString().contains("OnAdManagerAdViewLoadedListener") && ! local.getType().toString().contains("AdManagerAdViewOptions") && local.getType().toString().contains("AdManagerAdView") || local.getType().toString().contains("BaseAdView") || local.getType().toString().contains("AdView")){
                    return local;
                }
            }
        }else{
            Print("No Active Body Present!!!");
        }
        return null;
    }
    public static void main(String[] sootarguments) {
        // Initialize Soot
        String[] app_name =  sootarguments[0].split("/");
        String app_name_only = app_name[app_name.length-1].replace(".apk", "");
        // G.v().reset();
        Options.v().set_no_writeout_body_releasing(true);
        // Options.v().set_full_resolver(true);
        Options.v().set_include_all(true);
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
        // RUN SOOT
        soot.Main.main(sootarguments);
        Map<String, List<String>> class_to_static_methods = new HashMap<>();
        hash = sootarguments[2];
        Scene this_Scene = Scene.v();
        SootMethodRef method_ref_log = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef();
        Print("Running Soot!!!");
        Chain<SootClass> classes = this_Scene.getClasses();
        
        for (SootClass this_class : classes) {
            List<SootMethod> methods = this_class.getMethods();
            Chain<SootField> class_soot_fields = this_class.getFields();
            SootField this_class_has_fieldref_adview = FieldRef_Has_Adview(class_soot_fields);
            SootClass this_class_superclass = Method_Has_SuperClass_Adview(this_class);
            for(SootMethod this_method : methods){
                // Print("Class:"+this_class.getName() + " Method:"+this_method.getName());
                List<Type> method_types = this_method.getParameterTypes();
                Body this_method_body = null;
                if(this_method.hasActiveBody()){
                    this_method_body = this_method.retrieveActiveBody();
                    // Print("Class:"+this_class.getName() + " Method: "+this_method.getName() + " Has Active Body!!!");
                }
                 // Check if class is subtype of adview or baseadview
                // Else check if parameters is subtype of adview or baseadview.
                // If all these are false then check if object has reference to subtype of baseadview or adview.
                // Perform same process for field references.
                if(this_class_has_fieldref_adview != null && this_method_body != null){
                    Print("Class:"+ this_class.getName() + " " +"Method:" + this_method.getName() + " SootField: " + this_class_has_fieldref_adview.getName());
                    Inject_Log_Generic(app_name_only,hash,this_class.getName(),this_method.getName(), this_method);
                    // UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
                    // String MSG = app_name_only+"---"+hash+"---"+this_class.getName()+"---"+this_method.getName()+"---null";
                    // List<Value> listArgs = new ArrayList<Value>();
                    // listArgs.add(StringConstant.v("FiniteState"));
                    // listArgs.add(StringConstant.v(MSG));
                    // StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(method_ref_log, listArgs);
                    // InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
                    // Unit unit_to_insert_after = ReturnUnitToInjectAfter(thisunits);

                    // if(unit_to_insert_after != null){
                    //     thisunits.insertAfter(InvokeStatementLog, unit_to_insert_after);
                    // }
                }
                else if(this_class_superclass != null && this_method_body != null){
                    Print("Class:"+ this_class.getName() + " " +"Method:" + this_method.getName() + " SuperClass: " + this_class_superclass.getName());
                }
                else{
                    // Print("No Method Body");
                }


                // if(this_method.getName().contains("onCreate") && this_class.getName().contains(sootarguments[1])){
                //     UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
                //     String MSG = app_name_only+"---"+hash+"---"+this_class.getName()+"---"+this_method.getName()+"---null";
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
                // else if(this_method.isStatic() && this_method.getSource() != null && !this_method.isEntryMethod() && this_class.isApplicationClass() && !this_method.getName().contains("<clinit>")){
                // else if(this_method.getSource() != null && !this_method.isEntryMethod() && this_class.isApplicationClass() && !this_method.getName().contains("<clinit>") && !this_method.getName().contains("<init>")){
                // else if(this_method.isStatic() && this_class.isApplicationClass() && !this_method.getName().contains("<clinit>") && !this_method.getName().contains("<init>")){
               
                // else if(!this_method.getName().contains("<clinit>") && !this_method.getName().contains("<init>")){    
                //     Type this_method_type = Method_Has_Parameter_Adview(method_types);
                //     SootField this_soot_field = FieldRef_Has_Adview(class_soot_fields);
                //     if(this_soot_field != null){
                //         Print("Class:"+ this_class.getName() + " " +"Method:" + this_method.getName() + " SootField: " + this_soot_field.getName());
                //         Local this_method_local = Method_Has_Local_Adview(this_method);
                //         if(this_method_local != null){
                //             Print("Local:"+this_method_local.getType().toString());
                //         }
                //         // UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
                //         // String MSG = ""+app_name_only+"---"+hash+"---"+this_class.getName()+"---"+this_method.getName()+"(Static Method)---null";
                //         // List<Value> listArgs = new ArrayList<Value>();
                //         // listArgs.add(StringConstant.v("FiniteState"));
                //         // listArgs.add(StringConstant.v(MSG));
                //         // StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(method_ref_log, listArgs);
                //         // InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
                //         // Unit unit_to_insert_after = ReturnUnitToInjectAfter(thisunits);
                //         // if(unit_to_insert_after != null){
                //         //     thisunits.insertAfter(InvokeStatementLog, unit_to_insert_after);
                //         // }      
                //     }else if(this_method_type != null){
                //         Print("Class:"+ this_class.getName() + " " +"Method:" + this_method.getName() + " Type: " + this_method_type.toString());
                //         // if(this_method_body != null){
                //             Local this_method_local = Method_Has_Local_Adview(this_method);
                //             if(this_method_local != null){
                //                 Print("Local:"+this_method_local.getType().toString());
                //             }

                //             LocalGenerator localgenerator = CreateLocalGenerator(this_method_body, this_Scene);
                //             Local local_java_lang_string = CheckIfRefTypeExists(this_method_body, "java.lang.String");
                //             if(local_java_lang_string == null && localgenerator != null){
                //                 local_java_lang_string = localgenerator.generateLocal(RefType.v("java.lang.String"));
                //             }
                //         // }
                //     }
                // }
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
        // soot.Main.main(sootarguments);
    }
}