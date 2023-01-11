import java.util.Iterator; 
import java.util.*; 
import Conditions.SootConditionChecker; 
import soot.*; 
import soot.jimple.*; 
import soot.util.*; 
import java.io.*; 
import soot.options.Options; 
import soot.jimple.internal.*; 
import org.jf.dexlib2.immutable.reference.ImmutableFieldReference; 
import org.jf.dexlib2.iface.reference.FieldReference; 
import Soot.SootUtil;

public class SootAnalysisV4 {
    public static void main(String[] args) {
        Once once = new Once();
        Scene.v().addBasicClass("android.util.Log", SootClass.SIGNATURES);
        Scene.v().addBasicClass("java.io.PrintStream", SootClass.SIGNATURES);
        Scene.v().addBasicClass("java.lang.System", SootClass.SIGNATURES);
        PackManager.v().getPack("jtp").add(new Transform("jtp.myLogger", new BodyTransformer() {
            @Override
            protected void internalTransform(final Body body, String phaseName,
                    @SuppressWarnings("rawtypes") Map options) {
                        //System.out.println("Units: " + body.getUnits().toString());
                once.run(new Runnable() {
                    @Override
                    public void run() {
                         SootClass sClassHello = new SootClass("HelloWorld", Modifier.PUBLIC);
                        // 'extends Object'
                        sClassHello.setSuperclass(Scene.v().getSootClass("java.lang.Object"));
                        Scene.v().addClass(sClassHello);
                        sClassHello.setApplicationClass();
                        // String AppName = args[11].replace("APK/", "").replace(".apk", "");
                        //System.out.println("Units: " + body.getUnits().toString());
                        // Soot st = new Soot(AppName);
                        // st.RunSoot();
                        // new Logging(AppName);
                       // Logging.LogTheLogCount();
                        // st.LogTheLogCount();
                    }
                });
            }
        }));
        soot.Main.main(args);
    }
}
