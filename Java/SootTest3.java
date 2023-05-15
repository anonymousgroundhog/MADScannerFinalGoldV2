import soot.*;
import soot.jimple.*;
import soot.options.Options;
import soot.util.*;
import java.io.*;
import java.util.*;
import soot.javaToJimple.*;
public class SootTest3
{
    public static SootMethod addInitMethod(SootClass staticCounterClass){
        // incrementAndLog method increment counterField and prints its value.
        // SootMethod initMethod = new SootMethod("incrementAndLog",
        //         Arrays.asList(new Type[]{}),
        //         VoidType.v(), Modifier.PUBLIC | Modifier.STATIC);
        SootMethod initMethod = Scene.v().makeSootMethod("incrementAndLog",
                Arrays.asList(new Type[]{}),
                VoidType.v(), Modifier.PUBLIC);
        staticCounterClass.addMethod(initMethod);
        JimpleBody body = Jimple.v().newBody(initMethod);
        return initMethod;
    }
    public static SootClass createAdListenerClass(String packageName) {
        // The new class must be inside the APK package.
        String staticCounterSignature =  packageName+".SootTutorialStaticCounter";
        SootClass staticCounterClass = new SootClass(staticCounterSignature, Modifier.PUBLIC);
        // SootClass staticCounterClass = Scene.v().addClass(staticCounterSignature, Modifier.PUBLIC);
        staticCounterClass.setSuperclass(Scene.v().getSootClass("java.lang.Object"));
        staticCounterClass.setApplicationClass();
        return staticCounterClass;
    }
    public static void setupSoot(String androidJar, String apkPath, String outputPath) {
        // Reset the Soot settings (it's necessary if you are analyzing several APKs)
        G.reset();
        // Generic options
        Options.v().set_allow_phantom_refs(true);
        Options.v().set_whole_program(true);
        Options.v().set_prepend_classpath(true);
        // Read (APK Dex-to-Jimple) Options
        Options.v().set_android_jars(androidJar); // The path to Android Platforms
        Options.v().set_src_prec(Options.src_prec_apk); // Determine the input is an APK
        Options.v().set_process_dir(Collections.singletonList(apkPath)); // Provide paths to the APK
        Options.v().set_process_multiple_dex(true);  // Inform Dexpler that the APK may have more than one .dex files
        Options.v().set_include_all(true);
        // Write (APK Generation) Options
        Options.v().set_output_format(Options.output_format_J);
        Options.v().set_output_dir(outputPath);
        Options.v().set_validate(true); // Validate Jimple bodies in each transofrmation pack
        // Resolve required classes 
        // Scene.v().addBasicClass("java.io.PrintStream",SootClass.SIGNATURES);
        // Scene.v().addBasicClass("java.lang.System",SootClass.SIGNATURES);
        Scene.v().loadNecessaryClasses();
    }
    public static void main(String[] args) throws FileNotFoundException, IOException
    {
        // setupSoot("../../Android/platforms", "../../APK/"+args[0], "../sootOutput");

        PackManager.v().getPack("jtp").add(new Transform("jtp.myLogger", new BodyTransformer() {
            @Override
            protected void internalTransform(Body b, String phaseName, Map<String, String> options) {
                Options.v().set_no_writeout_body_releasing(true);
                // First we filter out Android framework methods
                JimpleBody body = (JimpleBody) b;
                UnitPatchingChain units = b.getUnits();
                List<Unit> generatedUnits = new ArrayList<>();
                // The message that we want to log
                String content = String.format("Beginning of method %s", body.getMethod().getSignature());
                System.out.println(content);
                SootClass thisClass = createAdListenerClass("ThisIsATest");
                SootMethod InitMethod = addInitMethod(thisClass);
                // PolyglotMethodSource mSrc = new PolyglotMethodSource(procedure.body(), procedure.formals());
                ClassLiteralMethodSource mSrc = new ClassLiteralMethodSource();
                InitMethod.setSource(mSrc);
            }
        }));   
        soot.Main.main(args);
    }
        
}
