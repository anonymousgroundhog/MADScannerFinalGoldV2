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
import soot.Hierarchy;
public class SootExample {
    public static void main(String[] sootarguments) {
         // Scene.v().setFastHierarchy(Hierarchy());

        // Run the analysis
        PackManager.v().runPacks();
        // RUN SOOT
        soot.Main.main(sootarguments);
        Map<String, List<String>> class_to_static_methods = new HashMap<>();
        // hash = sootarguments[2];
        Scene this_Scene = Scene.v();
        SootMethodRef method_ref_log = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef();
        // Print("Running Soot!!!");
        Chain<SootClass> classes = this_Scene.getApplicationClasses();
        
        SootClass superClass = Scene.v().getSootClass("com.google.android.gms.ads.BaseAdView");
        SootClass subClass = Scene.v().getSootClass("com.google.android.gms.example.bannerexample.TestClassAdViewAdListener");

        // Check if subClass inherits from superClass
        Hierarchy hierarchy = Scene.v().getActiveHierarchy();
        // boolean inherits = hierarchy.isClassSubclassOfIncluding(subClass, superClass);
        
        // if (inherits) {
        //     System.out.println("SubClass inherits from SuperClass.");
        // } else {
        //     System.out.println("SubClass does not inherit from SuperClass.");
        // }

        for (SootClass this_class : classes) {
            // System.out.printf("Class:%s\n",this_class.getName());
            if(this_class.hasSuperclass()){
            // if(this_class.hasSuperclass()){
                System.out.printf("Class:%s\tSuperclass:%s\n",this_class.getName(),this_class.getSuperclass().toString());
                // System.out.println("Superclasses:"+hierarchy.getSuperclassesOf(this_class).toString());
                // System.out.printf("Class:%s\tSuperClasses:%s\n", this_class.getName(), Scene.v().getActiveHierarchy().getSuperclassesOf(this_class).toString());
            }
        }
    }
}
