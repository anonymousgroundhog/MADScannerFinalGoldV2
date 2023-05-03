import java.io.*;
import java.util.*;
import soot.options.Options;
import soot.*;
import soot.jimple.*;
import soot.jimple.internal.*;
import soot.Scene;
public class SootTest {
    public static String hash = null;
    public static void Print(String stringvalue)
    {
        System.out.println(stringvalue);
    }
    public static void main(String[] sootarguments) {
        // String classpath = "/path/to/your/classpath";
        // Initialize Soot
        String[] app_name =  sootarguments[0].split("/");
        String app_name_only = app_name[app_name.length-1].replace(".apk", "");
        G.reset();
        Options.v().setPhaseOption("cg", "all-reachable:true");
        // Options.v().set_keep_line_number(true);
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
        String command = "sha256sum ../APK/" + app_name_only + ".apk";
            try {
                Process process = Runtime.getRuntime().exec(command);
                BufferedReader reader = new BufferedReader(
                    new InputStreamReader(process.getInputStream()));
                String line;
                while ((line = reader.readLine()) != null) {
                    hash = String.valueOf(line).replace(app_name_only,"");
                }        
                reader.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

        // PackManager.v().getPack("wjtp").add(new Transform("wjtp.ifds", new SceneTransformer() {
        //     protected void internalTransform(String phaseName, @SuppressWarnings("rawtypes") Map options) {
                Scene thisScene = Scene.v();
                for (SootClass this_class : thisScene.getClasses()) {
                    for(SootMethod this_method : this_class.getMethods()){
                        if(this_method.getName().contains("onCreate") && this_class.getName().contains(sootarguments[1])){
                            UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
                            String MSG = ""+app_name_only+"---"+hash+"---"+this_class.getName()+"---"+this_method.getName()+"---null";
                            List<Value> listArgs = new ArrayList<Value>();
                            listArgs.add(StringConstant.v("FiniteState"));
                            listArgs.add(StringConstant.v(MSG));
                            StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(), listArgs);
                            InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
                            Unit LastKnownUnit = null;
                            Unit unit_to_insert_after = null;
                            for (Iterator<Unit> unit = thisunits.snapshotIterator(); unit.hasNext();) {
                                LastKnownUnit = unit.next();
                                if(LastKnownUnit instanceof JInvokeStmt){
                                    Print("Class:" + this_class.getName() + " Method: " + this_method.getName());
                                    Print("!!!FOUND:"+LastKnownUnit.toString());
                                    thisunits.insertAfter(InvokeStatementLog, LastKnownUnit);
                                    break;
                                }
                            }
                        }
                        else if(this_method.isStatic() && this_class.getName().contains("com.google.android.gms.ads")){
                            UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
                            String MSG = ""+app_name_only+"---"+hash+"---"+this_class.getName()+"---"+this_method.getName()+"---null";
                            List<Value> listArgs = new ArrayList<Value>();
                            listArgs.add(StringConstant.v("FiniteState"));
                            listArgs.add(StringConstant.v(MSG));
                            StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(), listArgs);
                            InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
                            Unit LastKnownUnit = null;
                            Unit unit_to_insert_after = null;
                            for (Iterator<Unit> unit = thisunits.snapshotIterator(); unit.hasNext();) {
                                LastKnownUnit = unit.next();
                                if(LastKnownUnit instanceof JInvokeStmt){
                                    // Print("Class:" + this_class.getName() + "Method:" + this_method.getName());
                                    // Print("!!!FOUND:"+LastKnownUnit.toString());
                                    thisunits.insertAfter(InvokeStatementLog, LastKnownUnit);
                                    break;
                                }
                            }      
                        }
                    }
                }  
        soot.Main.main(sootarguments);
    }

}
