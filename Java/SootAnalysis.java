// import org.apache.commons.codec.digest.DigestUtils;

// import Soot.SootUtil;
// import Soot.SootInstrumenter;
import java.util.*;

import soot.options.Options;
import soot.*;
import soot.jimple.toolkits.callgraph.*;
public class SootAnalysis
{
    public static void Print(String stringvalue)
    {
        System.out.println(stringvalue);
    }
    public static void main(String[] sootarguments)
    {
        // SootInstrumenter thisSootInstrumenter = new SootInstrumenter();
        // thisSootInstrumenter.RunInstrumentationOnAPK(sootarguments);
        // Options.v().set_output_format(Options.output_format_dex);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_output_dir(sootarguments[1]);
        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_process_dir(Arrays.asList(sootarguments[0]));
        Options.v().set_android_jars("../../Android/platforms");
        Options.v().set_whole_program(true);
        Options.v().set_process_multiple_dex(true);
        Options.v().set_allow_phantom_refs(true);
        Scene thisScene = Scene.v();
        thisScene.loadNecessaryClasses();
        // PackManager.v().writeOutput();
       
        // START INSTRUMENTING HERE
        // Collection<SootClass> appClasses = thisScene.getApplicationClasses();
        Collection<SootClass> allClasses = thisScene.getClasses();
        String adSpecificClass = "com.google.android.gms.ads";
        for (SootClass cl : allClasses) {
            for (SootMethod meth: cl.getMethods()){
                if(meth.getName().contains("onCreate") && cl.getName().contains(sootarguments[2])){
                    Print("Class:" + cl.getName());
                    Print(meth.getName());
                }
                else if(meth.isStatic() && cl.getName().contains(adSpecificClass)){     
                    Print("Class:" + cl.getName());            
                    Print("Static Method: " + meth.getName());
                }
                else if(cl.hasSuperclass() && cl.getSuperclass().getName().contains("com.google.android.gms.ads.BaseAdView")){
                    Print("Class:" + cl.getName());            
                    Print(meth.getName());   
                }
                else if(!meth.isStatic() && cl.getName().contains(adSpecificClass)){     
                    Print("Class:" + cl.getName());            
                    Print(meth.getName());
                    // Loop through parameters and ask if subtype is of the abstract class that contains getAdUnitId
                    List<Type> parameterTypes = meth.getParameterTypes();
                    for (Type type: parameterTypes) {
                        System.out.println("Parameter " + ": " + type);
                        // If is subtype of the abstract class call getAdUnitId
                        // if not subtype of abstract class print name and say unsupported currently
                    }
                }
            }
        }
         Main.main(new String[] {});
    }
}