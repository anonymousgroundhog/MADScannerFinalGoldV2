
import java.util.*;
import java.io.*;
import java.lang.*;
import java.nio.file.*;
import java.util.Scanner;
import java.io.File;
import java.io.FileNotFoundException;

import soot.*;
import soot.jimple.*;
import soot.util.*;
import soot.jimple.internal.*;
import soot.jimple.*;
import soot.jimple.internal.JAssignStmt.*;
import soot.options.Options;

import soot.jimple.toolkits.callgraph.*;

public class SootInstrumentationHelper
    // String ANDROID_BOOT_JAR_PATH = "../../Android/platforms/android-33/android.jar";
{
    public static SootClass public_variable_soot_class;
    public static String public_variable_admanageradview = "com.google.android.gms.ads.admanager.AdManagerAdView";
    public static String public_variable_baseadview = "com.google.android.gms.ads.BaseAdView";
    public static String public_variable_string_class_to_inject_adlistener = "TestClass";
    public static String public_variable_string_class_to_inject = "TestClass";
    public static String public_variable_string_class_to_inject2 = "TestClass$1";
    public static String public_variable_mainactivity = null;
    public static String[] smAddMethodSignatures = {};
    public static String publicVariableStringClassToInject = "com.google.android.gms.example.bannerexample.TestClassAdViewAdListenerTesting";

    public static Local Generate_Local(Body this_body, LocalGenerator this_local_generator, String string_this_local){
        Boolean contains_local = false;
        Local local_to_return = null;
        for (Local local : this_body.getLocals()) {
            if (local.getType().toString().equals(string_this_local)) {
                contains_local = true;
                local_to_return = local;
            }
        }
        if(!contains_local){
            local_to_return = this_local_generator.generateLocal(RefType.v(string_this_local));
        }

        return local_to_return;
    }
    public static String Read_Nth_Line(String filePath, int lineNumber){
        String line = null;
        BufferedReader reader = null;
        
        try {
            reader = new BufferedReader(new FileReader(filePath));
            for (int i = 1; i <= lineNumber; i++) {
                line = reader.readLine();
                if (line == null) {
                    break;  // Line number exceeds file length
                }
            }
        } catch (IOException e) {
            // Handle any potential IO exceptions
            e.printStackTrace();
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return line;
    }
    public static void Print(String stringvalue){
        System.out.println(stringvalue);
    }
    public static SootField FieldRef_Has_Adview(Chain<SootField> class_soot_fields){
        for (SootField field: class_soot_fields){
            if(! field.getType().toString().contains("OnAdManagerAdViewLoadedListener") && ! field.getType().toString().contains("AdManagerAdViewOptions") && field.getType().toString().contains("AdManagerAdView") || field.getType().toString().contains("BaseAdView") || field.getType().toString().contains("AdView")){
                return field;
            }
        }
        return null;
    }
    public static Type Method_Has_Parameter_Adview(List<Type> method_soot_types){
        for (Type type: method_soot_types){
            if(! type.toString().contains("OnAdManagerAdViewLoadedListener") &&  ! type.toString().contains("AdManagerAdViewOptions") && type.toString().contains("AdManagerAdView") || type.toString().contains("BaseAdView") || type.toString().contains("AdView")){
                return type;
            }
        }
        return null;
    }
    public static SootClass Method_Has_SuperClass_Adview(SootClass this_class){
        if(this_class.hasSuperclass()){
            String super_class_name = this_class.getSuperclass().getName();
            if(super_class_name.contains("adView") || super_class_name.contains("BaseAdView") || super_class_name.contains("AdManagerAdView")){
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
    public static Boolean ContainsAdViewUnit(UnitPatchingChain thisunits){
        String public_variable_admanageradview = "com.google.android.gms.ads.admanager.AdManagerAdView";
        Unit this_unit = null;
        for (Iterator<Unit> unit = thisunits.snapshotIterator(); unit.hasNext();) {
            this_unit = unit.next();
            if (this_unit instanceof AssignStmt){
                    AssignStmt this_invokeStmt = (AssignStmt) this_unit;
                    Value left_side = this_invokeStmt.getLeftOpBox().getValue();
                    Value right_side = this_invokeStmt.getRightOpBox().getValue();
                    if(left_side.getType().toString().equals(public_variable_admanageradview) && left_side.getType().toString().equals(public_variable_admanageradview)){
                        Print(this_unit.toString());
                        return true;
                    }
                }
        }
        return false;
    }
    public static Boolean ContainsAdListenerUnit(UnitPatchingChain thisunits){
        String public_variable_admanageradview = "com.google.android.gms.ads.admanager.AdManagerAdView";
        Unit this_unit = null;
        for (Iterator<Unit> unit = thisunits.snapshotIterator(); unit.hasNext();) {
            this_unit = unit.next();
            if(this_unit.toString().contains("virtualinvoke") && this_unit.getUseBoxes().size() > 2){
                Value this_value = this_unit.getUseBoxes().get(2).getValue();
                if(this_value instanceof VirtualInvokeExpr){
                    VirtualInvokeExpr this_this_virtualinvoke_expr = (VirtualInvokeExpr) this_value;
                    String this_method_name = this_this_virtualinvoke_expr.getMethod().getName();
                    if(this_method_name.equals("setAdListener") && this_this_virtualinvoke_expr.getMethod().getDeclaringClass().getName().equals("com.google.android.gms.ads.BaseAdView")){
                        // Print(this_this_virtualinvoke_expr.getMethod().getName());
                        return true;
                    }
                }
            }
        }
        return false;
    }
    public static SootClass GetAdListenerUnitClass(UnitPatchingChain thisunits){
        String public_variable_admanageradview = "com.google.android.gms.ads.admanager.AdManagerAdView";
        Unit this_unit = null;
        for (Iterator<Unit> unit = thisunits.snapshotIterator(); unit.hasNext();) {
            this_unit = unit.next();
            if(this_unit.toString().contains("virtualinvoke") && this_unit.getUseBoxes().size() > 2){
                Value this_value = this_unit.getUseBoxes().get(2).getValue();
                if(this_value instanceof VirtualInvokeExpr){
                    VirtualInvokeExpr this_this_virtualinvoke_expr = (VirtualInvokeExpr) this_value;
                    String this_method_name = this_this_virtualinvoke_expr.getMethod().getName();
                    if(this_method_name.equals("setAdListener")){
                        // Print(this_this_virtualinvoke_expr.getMethod().getName());
                        return this_this_virtualinvoke_expr.getMethod().getDeclaringClass();
                    }
                }
            }
        }
        return null;
    }
    public static void WriteToTextFile(String content, String filePath, boolean option){
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath, option))) {
            writer.write(content); // Write the string to the file
        } catch (IOException e) {
            System.err.println("An error occurred while writing to the file: " + e.getMessage());
        }
    }
    public static void RemoveFile(String filePath){
         try {
            Path path = Paths.get(filePath);
            Files.delete(path); // Remove the file
            System.out.println("File removed successfully.");
        } catch (IOException e) {
            System.err.println("An error occurred while removing the file: " + e.getMessage());
        }
    }
    public static void printFormattedOutput(String format, Object... args) {
        System.out.printf(format, args);
    }
    public static void prepareSoot(String folder, String app_name, String option) {
        soot.G.reset();
        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_process_dir(Arrays.asList("../../APK/"+folder+"/"+app_name));
        Options.v().set_process_multiple_dex(true);
        Options.v().set_android_jars("../../Android/platforms");
        Options.v().set_whole_program(true);
        Options.v().set_allow_phantom_refs(true);
        Options.v().setPhaseOption("cg.spark", "on");
        // option="j";
        if(option.equals("J") || option.equals("j")){
            Options.v().set_output_format(Options.output_format_jimple);
        }else{
            Options.v().set_output_format(Options.output_format_dex);
        }
        
        Scene.v().loadNecessaryClasses();
        // Perform the necessary transformations on the scene
        Scene.v().setEntryPoints(Scene.v().getEntryPoints());
        Scene.v().setFastHierarchy(new FastHierarchy());
        // Run the analysis
        PackManager.v().runPacks();
    }
    public static String getMainClass(){
        return Read_Nth_Line("../APK_Details.txt",1).replace("Main_Activity:","").replace(" ", "");
    }
    public static void printClassHierarchyForSpecificClass(SootClass sootClass){
        // printFormattedOutput("Inside printClassHierarchyForSpecificClass\n");
        Hierarchy hierarchy = Scene.v().getActiveHierarchy();
        if(!sootClass.isInterface()){
            List<SootClass> this_subclasses = hierarchy.getSubclassesOf(sootClass);
            int number_of_subclasses = this_subclasses.size();
            if(number_of_subclasses > 0){
                printFormattedOutput("Class: %s\n\tSubclasses:\n", sootClass.getName());
                for (SootClass subClass : this_subclasses) {
                    printFormattedOutput("\t%s\n",subClass.getName());
                }
            }
        }else{
            printFormattedOutput("Class: %s is a interface\n", sootClass.getName());
        }
    }
    public static List<SootClass> ReturnClassHierarchyForSpecificClassAndExcludeAdLibraries(SootClass sootClass){
    List<SootClass> classes_to_return = new ArrayList<SootClass>();
        Hierarchy hierarchy = Scene.v().getActiveHierarchy();
        if(!sootClass.isInterface()){
            List<SootClass> this_subclasses = hierarchy.getSubclassesOf(sootClass);
            int number_of_subclasses = this_subclasses.size();
            if(number_of_subclasses > 0){
                for (SootClass subClass : this_subclasses) {
            String subClassName = subClass.getName();
            if(!subClassName.contains("com.google.android.gms.ads") && !subClassName.contains("com.google.android.gms.internal.ads") && !subClassName.contains("com.google.ads")){
                classes_to_return.add(subClass);
            }
                }
        return classes_to_return;
            }
        }else{
        return null;
        }
    return null;
    }
    public static void writeClassHierarchyToFile(Chain<SootClass> classes, String filename){
        Hierarchy hierarchy = Scene.v().getActiveHierarchy();
        int counter = 0;
        RemoveFile(filename);
        for (SootClass sootClass : classes) {
            if(!sootClass.isInterface()){
                List<SootClass> this_subclasses = hierarchy.getSubclassesOf(sootClass);
                int number_of_subclasses = this_subclasses.size();
                if(number_of_subclasses > 0){
                    WriteToTextFile("Class: "+sootClass.getName()+"\n\tSubclasses:\n", filename, true);
                    for (SootClass subClass : this_subclasses) {
                        WriteToTextFile("\t"+subClass.getName()+"\n", filename, true);
                    }
                }
            }
        }
    }
    public static void printClassHierarchy(Chain<SootClass> classes){
        Hierarchy hierarchy = Scene.v().getActiveHierarchy();
        for (SootClass sootClass : classes) {
            if(!sootClass.isInterface()){
                List<SootClass> this_subclasses = hierarchy.getSubclassesOf(sootClass);
                int number_of_subclasses = this_subclasses.size();
                if(number_of_subclasses > 0){
                    printFormattedOutput("Class: %s\n\tSubclasses:\n", sootClass.getName());
                    for (SootClass subClass : this_subclasses) {
                        printFormattedOutput("\t%s\n",subClass.getName());
                    }
                }
            }
        }
    }
    public static Chain<SootClass> getAllClasses() {
        return Scene.v().getApplicationClasses();
    }
    public static List<SootClass> getRegisteredServicesClasses() {
        final CallGraph cg = Scene.v().getCallGraph();
        for (String mthSig : smAddMethodSignatures) {
            SootMethod smAddServiceMth = Scene.v().grabMethod(mthSig);
            printFormattedOutput("%s\n%s\n",mthSig,smAddServiceMth.getActiveBody().toString());
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
    // INJECTING TestClass
    public static void InjectNewClass_AdListenerClass1(){
        SootUtil this_soot_util = new SootUtil();
        boolean this_adlistener_exists = Scene.v().getApplicationClasses().toString().contains("com.google.android.gms.ads.AdListener");
        if(this_adlistener_exists)
        {
            Print("INJECTING CLASS AdListenerClass1");
            SootMethod this_soot_method = null;
            public_variable_soot_class = new SootClass(public_variable_string_class_to_inject);
            public_variable_soot_class.setSuperclass(Scene.v().getSootClass("java.lang.Object"));
            Scene.v().addClass(public_variable_soot_class);
            public_variable_soot_class.setApplicationClass();
            
            this_soot_method = new SootMethod("<init>", Arrays.asList(), VoidType.v(), Modifier.PUBLIC);
            public_variable_soot_class.addMethod(this_soot_method);

            // Set method source for Init
            ClassLiteralMethodSourceonInitFirst this_soot_method_source_init = new ClassLiteralMethodSourceonInitFirst();
            this_soot_method_source_init.public_string_class_to_inject = public_variable_soot_class.getName();
            this_soot_method_source_init.this_soot_class = public_variable_soot_class;
            this_soot_method_source_init.this_string_method_to_inject = "void <init>";
            this_soot_method.setSource(this_soot_method_source_init);

            // this_method_arguments = Collections.<Value>emptyList();
            this_soot_method = new SootMethod("setAdListener", Arrays.asList(new Type[] {RefType.v(public_variable_baseadview)}), VoidType.v(), Modifier.PUBLIC);
            public_variable_soot_class.addMethod(this_soot_method);
            
            // Set method source for setAdListener
            ClassLiteralMethodSourceSetAdListener this_soot_method_source_setAdListener = new ClassLiteralMethodSourceSetAdListener();
            this_soot_method_source_setAdListener.public_string_class_to_inject = public_variable_string_class_to_inject_adlistener;
            this_soot_method_source_setAdListener.this_soot_class = public_variable_soot_class;
            this_soot_method_source_setAdListener.this_string_method_to_inject = "void setAdListener("+public_variable_baseadview+")";
            this_soot_method.setSource(this_soot_method_source_setAdListener);
        }
    }
    // INJECTING TestClass$1
    public static void InjectNewClass_AdListenerClass2(String App_Name, String Hash){
        SootUtil this_soot_util = new SootUtil();
        boolean this_adlistener_exists = Scene.v().getApplicationClasses().toString().contains("com.google.android.gms.ads.AdListener");
        if(this_adlistener_exists)
        {
            Print("INJECTING CLASS AdListenerClass2");
            SootMethod this_soot_method = null;
            public_variable_soot_class = new SootClass(public_variable_string_class_to_inject2);

            public_variable_soot_class.setSuperclass(Scene.v().getSootClass("com.google.android.gms.ads.AdListener"));
            Scene.v().addClass(public_variable_soot_class);
            public_variable_soot_class.setApplicationClass();
            //CREATE FIELD: final com.google.android.gms.example.bannerexample.MyActivity this$0;
            SootField this_field_this = this_soot_util.AddFinalFieldToSootClass(public_variable_soot_class
, "this$0", public_variable_string_class_to_inject_adlistener);

            // CREATE FIELD: final com.google.android.gms.ads.admanager.AdManagerAdView val$adView;
            SootField this_field_adview = this_soot_util.AddFinalFieldToSootClass(public_variable_soot_class
, "val$adView", public_variable_baseadview);

            this_soot_method = new SootMethod("<init>", Arrays.asList(new Type[] {RefType.v(public_variable_string_class_to_inject_adlistener
), RefType.v(public_variable_baseadview)}), VoidType.v());
            public_variable_soot_class.addMethod(this_soot_method);

            // Set method source for Init
            ClassLiteralMethodSourceonInit this_soot_method_source_init = new  ClassLiteralMethodSourceonInit();
            this_soot_method_source_init.public_string_class_to_inject = public_variable_soot_class.getName();
            this_soot_method_source_init.this_soot_class = public_variable_soot_class;
            this_soot_method_source_init.this_string_method_to_inject = "void <init>";
            this_soot_method.setSource(this_soot_method_source_init);

            // Generate method public void onAdClicked()
            SootMethod this_soot_method_onAdClicked = new SootMethod("onAdClicked", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            public_variable_soot_class.addMethod(this_soot_method_onAdClicked);
            
            // // Set method source for onAdClicked
            ClassLiteralMethodSourceGeneric this_soot_methodsource_generic_adclicked = new ClassLiteralMethodSourceGeneric();
            this_soot_methodsource_generic_adclicked.public_string_class_to_inject = public_variable_soot_class.getName();
            this_soot_methodsource_generic_adclicked.this_soot_class = public_variable_soot_class;
            this_soot_methodsource_generic_adclicked.this_string_method_to_inject = "void onAdClicked()";
            this_soot_methodsource_generic_adclicked.this_string_method_name = App_Name + "---"  + Hash + "---" + public_variable_string_class_to_inject2 + "---onAdClicked---";
            this_soot_method_onAdClicked.setSource(this_soot_methodsource_generic_adclicked);

            // Generate method public void onAdClosed()
            SootMethod this_soot_method_onAdClosed = new SootMethod("onAdClosed", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            public_variable_soot_class.addMethod(this_soot_method_onAdClosed);
            
            // // Set method source for onAdClosed
            ClassLiteralMethodSourceGeneric this_soot_methodsource_generic_adclosed = new ClassLiteralMethodSourceGeneric();
            this_soot_methodsource_generic_adclosed.public_string_class_to_inject = public_variable_soot_class.getName();
            this_soot_methodsource_generic_adclosed.this_soot_class = public_variable_soot_class;
            this_soot_methodsource_generic_adclosed.this_string_method_to_inject = "void onAdClosed()";
            this_soot_methodsource_generic_adclosed.this_string_method_name = App_Name + "---"  + Hash + "---" + public_variable_string_class_to_inject2 + "---onAdClosed---";
            this_soot_method_onAdClosed.setSource(this_soot_methodsource_generic_adclosed);

            // Generate method public void onAdLoaded()
            SootMethod this_soot_method_onAdLoaded = new SootMethod("onAdLoaded", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            public_variable_soot_class.addMethod(this_soot_method_onAdLoaded);
            
            // // Set method source for onAdLoaded
            ClassLiteralMethodSourceGeneric this_soot_methodsource_generic_adloaded = new ClassLiteralMethodSourceGeneric();
            this_soot_methodsource_generic_adloaded.public_string_class_to_inject = public_variable_soot_class.getName();
            this_soot_methodsource_generic_adloaded.this_soot_class = public_variable_soot_class;
            this_soot_methodsource_generic_adloaded.this_string_method_name = App_Name + "---"  + Hash + "---" + public_variable_string_class_to_inject2 + "---onAdLoaded---";
            this_soot_methodsource_generic_adloaded.this_string_method_to_inject = "void onAdLoaded()";
            this_soot_method_onAdLoaded.setSource(this_soot_methodsource_generic_adloaded);
            
            // Generate method public void onAdImpression()
            SootMethod this_soot_method_onAdImpression = new SootMethod("onAdImpression", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            public_variable_soot_class.addMethod(this_soot_method_onAdImpression);
            
            // // Set method source for onAdImpression
            ClassLiteralMethodSourceGeneric this_soot_methodsource_generic_adimpression = new ClassLiteralMethodSourceGeneric();
            this_soot_methodsource_generic_adimpression.public_string_class_to_inject = public_variable_soot_class.getName();
            this_soot_methodsource_generic_adimpression.this_soot_class = public_variable_soot_class;
            this_soot_methodsource_generic_adimpression.this_string_method_name = App_Name + "---"  + Hash + "---" + public_variable_string_class_to_inject2 + "---onAdImpression---";
            this_soot_methodsource_generic_adimpression.this_string_method_to_inject = "void onAdImpression()";
            this_soot_method_onAdImpression.setSource(this_soot_methodsource_generic_adimpression);

            // Generate method public void onAdImpression()
            SootMethod this_soot_method_onAdOpened = new SootMethod("onAdOpened", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            public_variable_soot_class.addMethod(this_soot_method_onAdOpened);
            
            // // Set method source for onAdImpression
            ClassLiteralMethodSourceGeneric this_soot_methodsource_generic_adopened = new ClassLiteralMethodSourceGeneric();
            this_soot_methodsource_generic_adopened.public_string_class_to_inject = public_variable_soot_class.getName();
            this_soot_methodsource_generic_adopened.this_soot_class = public_variable_soot_class;
            this_soot_methodsource_generic_adopened.this_string_method_name = App_Name + "---"  + Hash + "---" + public_variable_string_class_to_inject2 + "---onAdOpened---";
            this_soot_methodsource_generic_adopened.this_string_method_to_inject = "void onAdOpened()";
            this_soot_method_onAdOpened.setSource(this_soot_methodsource_generic_adopened);
        }
    }
    public static void Inject_Into_Main_Activity(Body this_body, String app_name_only, String hash){
        SootMethod this_method = this_body.getMethod();
        SootClass this_class = this_method.getDeclaringClass();
        String string_this_class = this_class.getName();
        if(public_variable_mainactivity != null && string_this_class.equals(public_variable_mainactivity)){
            // Inject Locals and Units
            Chain<Unit> this_units = this_body.getUnits();
            Unit unit_to_inject_after = null;
            for(Unit this_unit: this_units){
                if (this_unit instanceof AssignStmt){
                    AssignStmt this_invokeStmt = (AssignStmt) this_unit;
                    Value left_side = this_invokeStmt.getLeftOpBox().getValue();
                    Value right_side = this_invokeStmt.getRightOpBox().getValue();
                    if(left_side.getType().toString().equals(public_variable_admanageradview) && left_side.getType().toString().equals(public_variable_admanageradview)){
                        unit_to_inject_after = this_unit;
                        break;
                    }
                }
            }
            // Start injection process here
            if(unit_to_inject_after != null){
                // Add Locals
                LocalGenerator this_local_generator = Scene.v().createLocalGenerator(this_body);
                Local local_this_class = Generate_Local(this_body, this_local_generator, public_variable_string_class_to_inject);
                Local local_this_admanager = Generate_Local(this_body, this_local_generator, "com.google.android.gms.ads.admanager.AdManagerAdView");
                
                // Generate r4 = r0.<com.google.android.gms.example.bannerexample.MyActivity: com.google.android.gms.ads.admanager.AdManagerAdView adView>;
                Value this_value = null;
                for (ValueBox vb: unit_to_inject_after.getDefBoxes()){
                   this_value = vb.getValue(); 
                }
                AssignStmt this_assign_stmt_to_inject = Jimple.v().newAssignStmt(local_this_admanager, this_value);
                this_units.insertAfter(this_assign_stmt_to_inject, unit_to_inject_after);

                // Generate r2 = new com.google.android.gms.example.bannerexample.TestClass;
                AssignStmt IdentityStmtNew = Jimple.v().newAssignStmt(local_this_class, Jimple.v().newNewExpr(RefType.v(public_variable_string_class_to_inject)));
                this_units.insertAfter(IdentityStmtNew, this_assign_stmt_to_inject);
                
                // Generate specialinvoke r2.<com.google.android.gms.example.bannerexample.TestClass: void <init>()>();
                SootClass class_to_inject = Scene.v().getSootClass(public_variable_string_class_to_inject);
                SootMethodRef this_ref = class_to_inject.getMethod("void <init>()").makeRef();
                SpecialInvokeExpr special_this_invoke_expression_to_inject = Jimple.v().newSpecialInvokeExpr(local_this_class, this_ref);
                Unit u1= Jimple.v().newInvokeStmt(special_this_invoke_expression_to_inject);
                this_units.insertAfter(u1, IdentityStmtNew);
                
                // Generate virtualinvoke r2.<com.google.android.gms.example.bannerexample.TestClass: void setAdListener(com.google.android.gms.ads.BaseAdView)>(r4);
                this_ref = class_to_inject.getMethod("void setAdListener("+public_variable_baseadview+")").makeRef();
                VirtualInvokeExpr this_this_virtualinvoke_expr_to_inject = Jimple.v().newVirtualInvokeExpr(local_this_class,this_ref,local_this_admanager);
                Unit u2= Jimple.v().newInvokeStmt(this_this_virtualinvoke_expr_to_inject);
                
                this_units.insertAfter(u2, u1);

                // INJECT STANDARD LOG MESSAGE

                SootMethodRef method_ref_log = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef();
                String MSG = app_name_only+"---"+hash+"---"+this_class.getName()+"---"+this_method.getName()+"---null";
                List<Value> listArgs = new ArrayList<Value>();
                listArgs.add(StringConstant.v("FiniteState"));
                listArgs.add(StringConstant.v(MSG));
                StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(method_ref_log, listArgs);
                InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
                this_units.insertAfter(InvokeStatementLog, u2);
            }
        }
    }
    public static Boolean Contains_Ads(Chain<SootClass> classes){
        for (SootClass sootClass : classes) {
            if(sootClass.getName().contains("com.google.android.gms.ads") && sootClass.getName().contains("com.google.android.gms.ads.AdListener")){
                return true;
            }
        }
        return false;
    }
    public static Boolean Class_Contains_onCreate(SootClass this_class){
        for (SootMethod sootMethod : this_class.getMethods()) {
            if(sootMethod.getName().equals("onCreate")){
                return true;
            }
        }
        return false;
    }
    public static List<String> Return_MainActivity_Class_Methods(){
        List<String> methods_with_ad_listener = new ArrayList<String>();
        if(public_variable_mainactivity != null){
            SootClass this_class = Scene.v().getSootClass(public_variable_mainactivity);
            List<SootMethod> mainactivity_class_methods = this_class.getMethods();
            for(SootMethod this_method: mainactivity_class_methods){
                methods_with_ad_listener.add(this_method.getName());
            }

            return methods_with_ad_listener;
        }else{
            return null;
        }
    }
    public static List<String> Return_Lines_From_File(String FileName) {
        List<String> lines_to_return = new ArrayList<String>();
       try {
            Scanner scanner = new Scanner(new File("../../Data/"+FileName+".txt"));
            while (scanner.hasNextLine()) {
                lines_to_return.add(scanner.nextLine());
            }
            scanner.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return(lines_to_return);
    }   
    public static void Write_To_File(String FileName, String str) {
        try{
            BufferedWriter writer = new BufferedWriter(new FileWriter("../../Data/"+FileName, true));
            // writer.append('\n');
            writer.append(str+"\n");
            
            writer.close();

        }catch (IOException e) {
 
            // Print the exception
            System.out.print(e.getMessage());
        }
    }   
    public static void Extract_AdListener_Call_Locations(Chain<SootClass> classes, String app_name_only){
         for (SootClass sootClass : classes) {
            if(!sootClass.getName().contains("com.google.ads.mediation.AbstractAdViewAdapter") && !sootClass.getName().contains("com.google.android.gms.internal.ads") && !sootClass.getName().contains("androidx") && !sootClass.getName().contains("com.google.android.gms.ads") && !sootClass.getName().contains("com.google.android.gms.ads.AdListener") && !sootClass.getName().contains("MADScannerTestClass")){
                printFormattedOutput("Class: %s\n",sootClass.getName());
                for(SootMethod this_method: sootClass.getMethods()){
                    if(this_method.hasActiveBody()){
                        UnitPatchingChain this_units = this_method.getActiveBody().getUnits();
                        for(Unit this_unit: this_units){
                            if(this_unit instanceof InvokeStmt){
                                InvokeStmt invoke_statement = (InvokeStmt) this_unit;
                                InvokeExpr this_invoke_expression = invoke_statement.getInvokeExpr();
                                if (this_invoke_expression instanceof VirtualInvokeExpr) {
                                    VirtualInvokeExpr this_virtualinvoke_expr = (VirtualInvokeExpr) this_invoke_expression;
                                    SootMethod this_current_method = this_virtualinvoke_expr.getMethod();
                                    if(this_virtualinvoke_expr.getMethodRef().name().contains("setAdListener")){
                                        printFormattedOutput("\tMethod:%s\n",this_method.getName());
                                        Print("FOUND!!!");
                                        // write to file;
                                        Write_To_File("AdListenerMethods.txt",app_name_only+":"+this_method.getDeclaringClass().getName()+":"+this_method.getName()+":"+this_unit.toString());
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        // return false;
    }
    // public static Boolean Return_Class_and_Methods_That_Contain_AdListener_Calls(Chain<SootClass> allClasses){
    // public static void Extract_AdListener_Call_Locations(List<String> mainactivity_methods, String app_name_only){
    //     PackManager.v().getPack("jtp").add(
    //         new Transform("jtp.myTransform", new BodyTransformer() {
    //             protected void internalTransform(Body body, String phase, Map options) {
    //                 List<String> lines_to_return = new ArrayList<String>();
    //                 boolean return_value = false;
    //                 SootMethod this_method = body.getMethod();
    //                 String this_method_name = this_method.getName();
    //                 UnitPatchingChain this_units = this_method.getActiveBody().getUnits();
    //                 for(Unit this_unit: this_units){
    //                     if(this_unit instanceof InvokeStmt){
    //                         InvokeStmt invoke_statement = (InvokeStmt) this_unit;
    //                         InvokeExpr this_invoke_expression = invoke_statement.getInvokeExpr();
    //                         if (this_invoke_expression instanceof VirtualInvokeExpr) {
    //                             VirtualInvokeExpr this_virtualinvoke_expr = (VirtualInvokeExpr) this_invoke_expression;
    //                             SootMethod this_current_method = this_virtualinvoke_expr.getMethod();
    //                             // SootClass this_invoke_class = this_current_method.getDeclaringClass();
    //                             // Boolean mainactivity_contains_method = mainactivity_methods.contains(this_method_name);
    //                             if(this_virtualinvoke_expr.getMethodRef().name().contains("setAdListener")){
    //                                 // Print( "Contains Test: " + mainactivity_contains_method + " Method: "+this_method_name + " Test:"+this_virtualinvoke_expr.getMethodRef().name().toString());
    //                                 // methods_with_ad_listener.add(this_method_name);
    //                                 // if(mainactivity_contains_method){
    //                                     Print("FOUND!!!");
    //                                     // write to file;
    //                                     Write_To_File("AdListenerMethods.txt",app_name_only+":"+this_method.getDeclaringClass().getName()+":"+this_method.getName()+":"+this_unit.toString());
    //                                     // break;
    //                                 // }
    //                             }
    //                         }
    //                     }
    //                 // return false;
    //                 }
    //                 // File f = new File("../../Data/AdListenerMethods.txt");
    //                 // if(f.exists()){
    //                 //     lines_to_return=Return_Lines_From_File("AdListenerMethods");
    //                 //     for(String line:lines_to_return){
    //                 //         String[] this_line_array = line.split(":");
    //                 //         if(mainactivity_methods.contains(this_line_array[2])){
    //                 //             printFormattedOutput("Line: %s %s\n", this_line_array[1], this_line_array[2]);
    //                 //         }
    //                 //     }
    //                 // }
    //     }}));
    // }
    public static List<SootClass> Extract_Google_AdMob_Classes(Chain<SootClass> classes){
        List<SootClass> classes_to_return = new ArrayList<SootClass>();
        for (SootClass sootClass : classes) {
            if (sootClass.getName().startsWith("com.google.android.gms.ads")) {
            classes_to_return.add(sootClass);
            }
        }
        return classes_to_return;
    }
    public static void Inject_Log_Generic(String app_name_only, String hash, String this_class_name, String this_method_name, SootMethod this_method){
        SootMethodRef method_ref_log = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef();
        if(this_method.hasActiveBody() && !this_method.isConstructor() && !this_method.getName().contains("<clinit>")){
            UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
            String MSG = app_name_only+"---"+hash+"---"+this_class_name+"---"+this_method_name+"---null";
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
    }
    // This is where we would want ot check for the ID and whether or not one could be found.
    public static void Inject_Into_Google_Libs_Log_Message(List<SootClass> classes, String app_name_only, String hash){
        for(SootClass this_class : classes){
            for (SootMethod this_method : this_class.getMethods()){
            String this_method_name = this_method.getName();
            String this_class_name = this_class.getName();
            Inject_Log_Generic(app_name_only, hash, this_class_name, this_method_name, this_method);
            }
        }
    }
    public static List<SootClass> ReturnVirtualInvokeClasses(SootClass this_class, String method_name){
        List<SootClass> classes_to_return = new ArrayList<SootClass>();
        UnitPatchingChain this_units = this_class.getMethodByName(method_name).getActiveBody().getUnits();
        for(Unit this_unit: this_units){
            if(this_unit instanceof InvokeStmt){
                InvokeStmt invokeStmt = (InvokeStmt) this_unit;
                InvokeExpr this_invoke_expression = invokeStmt.getInvokeExpr();
                 if (this_invoke_expression instanceof VirtualInvokeExpr) {
                    VirtualInvokeExpr this_virtualinvoke_expr = (VirtualInvokeExpr) this_invoke_expression;
                    SootMethod this_method = this_virtualinvoke_expr.getMethod();
                    SootClass this_invoke_class = this_method.getDeclaringClass();
                    classes_to_return.add(this_invoke_class);
                 }
            }
        }
        return classes_to_return;
    }
}