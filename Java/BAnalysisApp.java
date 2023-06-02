import soot.*;
import soot.util.*;
import soot.jimple.*;
import soot.jimple.internal.*;
import soot.javaToJimple.*;
import soot.options.Options;
import java.io.*;
import java.util.*;
import soot.grimp.NewInvokeExpr;
import soot.jimple.internal.JAssignStmt.*;
import soot.jimple.internal.*;
import soot.Scene;
import soot.SootClass;
import soot.SceneTransformer;
import soot.Hierarchy;
import soot.options.Options;


import soot.jimple.toolkits.callgraph.CallGraph;
import soot.jimple.toolkits.callgraph.Edge;
// import soot.options.Options;

public class BAnalysisApp {
    private final static String ANDROID_BOOT_JAR_PATH = "../../Android/platforms/android-33/android.jar";

    // searched method signatures
    private final static String[] smAddMethodSignatures = {
	    "<com.google.android.gms.example.bannerexample.MyActivity: void onCreate(android.os.Bundle)>"};

    public static void main(String[] args) {
    	String apk_file = args[0];
    	String hash = args[1];
    	printFormattedOutput("File:%s\nHash:%s\n",apk_file,hash);
		prepareSoot(apk_file);
		List<SootClass> registeredServices = getRegisteredServicesClasses();
		Chain<SootClass> allClasses = getAllClasses();
		
		// System.out.printf("Classes:%s\n",allClasses.toString());
		printClassHierarchy(allClasses);
		
		// START INJECTION PROCESS
		PackManager.v().getPack("jtp").add(new Transform("jtp.myLogger", new BodyTransformer() {
            @Override
            protected void internalTransform(Body this_body, String phaseName, Map<String, String> options) {
            }
        })); 
        soot.Main.main(args);

    }
    private static void printFormattedOutput(String format, Object... args) {
	    System.out.printf(format, args);
	}

    private static void prepareSoot(String app_name) {
	soot.G.reset();
	Options.v().set_src_prec(Options.src_prec_apk);
	Options.v().set_process_dir(Arrays.asList("../../APK/"+app_name));
	Options.v().set_process_multiple_dex(true);
	Options.v().set_android_jars("../../Android/platforms");
	Options.v().set_whole_program(true);
	Options.v().set_allow_phantom_refs(true);
	Options.v().set_output_format(Options.output_format_jimple);
	// Options.v().setPhaseOption("cg.spark", "on");
	Scene.v().loadNecessaryClasses();
	// Perform the necessary transformations on the scene
	Scene.v().setEntryPoints(Scene.v().getEntryPoints());
    Scene.v().setFastHierarchy(new FastHierarchy());
    // Run the analysis
	PackManager.v().runPacks();
	// PackManager.v().runBodyPacks();
	// PackManager.v().writeOutput();
    }

    private static String getMainClass(){
    	// public_variable_mainactivity = this_Helper.Read_Nth_Line("../APK_Details.txt",1).replace("Main_Activity:","").replace(" ", "");
    	return null;
    }
    private static void printClassHierarchy(Chain<SootClass> classes){
    	Hierarchy hierarchy = Scene.v().getActiveHierarchy();
    	for (SootClass sootClass : classes) {
            if(sootClass instanceof SootClass){
                printFormattedOutput("Class: %s\n\tSubclasses:\n", sootClass.getName());
                for (SootClass subClass : hierarchy.getSubclassesOf(sootClass)) {
                    printFormattedOutput("\t%s\n",subClass.getName());
                }
            }
        }
    }
    private static Chain<SootClass> getAllClasses() {
		return Scene.v().getApplicationClasses();
    }
    private static List<SootClass> getRegisteredServicesClasses() {
		final CallGraph cg = Scene.v().getCallGraph();
		for (String mthSig : smAddMethodSignatures) {
		    SootMethod smAddServiceMth = Scene.v().grabMethod(mthSig);
		    printFormattedOutput("%s\n%s\n",mthSig,smAddServiceMth.getActiveBody().toString());
	            //iterating over the caller methods
		    Iterator<Edge> edgeIterator = cg.edgesInto(smAddServiceMth);
		    while (edgeIterator.hasNext()) {
				Edge mtdEdge = edgeIterator.next();
				SootMethod srcMtd = mtdEdge.src();
				System.out.println(srcMtd.getSignature());
				System.out.println(mtdEdge.srcStmt().toString());
		    }
		}
		return null;
    }
}