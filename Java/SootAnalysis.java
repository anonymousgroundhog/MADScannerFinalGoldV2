// import org.apache.commons.codec.digest.DigestUtils;

// import Soot.SootUtil;
// import Soot.SootInstrumenter;
import java.util.*;

import soot.options.Options;
import soot.*;

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
        PackManager.v().writeOutput();
       
        // START INSTRUMENTING HERE
        Collection<SootClass> appClasses = thisScene.getApplicationClasses();
        for (SootClass cl : appClasses) {
             // if(cl.isPublic() && cl.getSuperclass().toString().contains("androidx.appcompat.app.AppCompatActivity")){
            if(cl.getName().contains(sootarguments[2])){
                Print("class:"+cl.getName());
                // Print("test:"+Scene.v().getActiveHierarchy().getSubclassesOf(cl).toString());
                for (SootMethod meth: cl.getMethods()){
                    // if(meth.isDeclared() && meth.isConcrete()){
                    if((meth.isProtected() || meth.isPublic()) && meth.getName().contains("onCreate")){
                        Print("declared and protected:"+meth.getName());
                    }
                    // }
                }
            }
        }
         Main.main(new String[] {});
    }
}