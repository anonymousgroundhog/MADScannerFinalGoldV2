import org.apache.commons.codec.digest.DigestUtils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.util.concurrent.ConcurrentHashMap;
import java.util.Iterator;
import java.util.*;
import java.io.*;
import java.lang.*;
import java.util.concurrent.TimeUnit;
import java.util.Collections;

import Conditions.SootConditionChecker;
import Soot.SootUtil;

import soot.*;
import soot.Value;
import soot.jimple.*;
import soot.jimple.Constant;
import soot.util.*;
import soot.options.Options;
import soot.jimple.internal.*;
import soot.jimple.Jimple;
import soot.jimple.JimpleMethodSource;
import soot.ValueBox;
import soot.jimple.internal.JAssignStmt.LinkedVariableBox;
import soot.jimple.internal.JAssignStmt.LinkedRValueBox;
import org.jf.dexlib2.immutable.reference.ImmutableFieldReference;
import org.jf.dexlib2.iface.reference.FieldReference;
import soot.jimple.parser.parser.ParserException;
import soot.jimple.parser.lexer.LexerException;

import soot.dexpler.DalvikThrowAnalysis;
import soot.javaToJimple.DefaultLocalGenerator;
import soot.jimple.spark.internal.ClientAccessibilityOracle;
import soot.jimple.spark.internal.PublicAndProtectedAccessibility;
import soot.jimple.spark.pag.SparkField;
import soot.jimple.toolkits.callgraph.CallGraph;
import soot.jimple.toolkits.callgraph.ContextSensitiveCallGraph;
import soot.jimple.toolkits.callgraph.ReachableMethods;
import soot.jimple.toolkits.pointer.DumbPointerAnalysis;
import soot.jimple.toolkits.pointer.SideEffectAnalysis;
import soot.jimple.toolkits.scalar.DefaultLocalCreation;
import soot.jimple.toolkits.scalar.LocalCreation;
import soot.options.CGOptions;
import soot.options.Options;
import soot.toolkits.exceptions.PedanticThrowAnalysis;
import soot.toolkits.exceptions.ThrowAnalysis;
import soot.toolkits.exceptions.UnitThrowAnalysis;
import soot.util.ArrayNumberer;
import soot.util.Chain;
import soot.util.HashChain;
import soot.util.IterableNumberer;
import soot.util.MapNumberer;
import soot.util.Numberer;
import soot.util.StringNumberer;
import soot.util.WeakMapNumberer;
import soot.jimple.internal.JAssignStmt;

public class SootAnalysis
{
    private static List<String> ThingstToCheck = Arrays.asList(new String[]{"loadAd", "setAdInfo", "setAdString", "onAdClicked", 
        "onAdLoaded", "onAdFailedToLoad", "onAdImpression", "onAdOpened"});
    private static boolean publicVariableBooleanRunImplementationOnce = true;
    private static SootClass publicVariableSootClass;
    private static final Logger logger = LoggerFactory.getLogger(Scene.class);
    public static String publicVariableStringClassToInjectAdlistener = null;
    public static String publicVariableStringClassToInject = null;
    public static String stringClassToInvestigate = null;
    public static String hash = null; 
    public static List<String> nameList = new ArrayList<String>();
    public static boolean namesHaveBeenRetrieved = false;
    protected SootClass mainClass;
    protected StringNumberer subSigNumberer = new StringNumberer();
    protected Chain<SootClass> applicationClasses = new HashChain<SootClass>();
    protected final Map<String, RefType> nameToClass = new ConcurrentHashMap<String, RefType>();
    public static void Wait(int varMilliseconds)
    {
        try
        {
            Thread.sleep(varMilliseconds);
        }
        catch(InterruptedException ex)
        {
            Thread.currentThread().interrupt();
        }
    }
    public static void Print(String stringvalue)
    {
        System.out.println(stringvalue);
    }
    public static AssignStmt newAssignStmt(Value variable, Value rightvalue)
    {
        return new JAssignStmt(variable, rightvalue);
    }
    public static JimpleBody InitBody(SootMethod sootmethod){
            SootUtil sootUtil = new SootUtil();
            JimpleBody newbody = Jimple.v().newBody(sootmethod);

            sootmethod.setActiveBody(newbody);
            Chain sootunits = newbody.getUnits();
            Local argument1, argument2;

            argument1 = sootUtil.NewLocal("r0", RefType.v(publicVariableStringClassToInject)); //ERRORS out if you use $20 instead of $2
            newbody.getLocals().add(argument1);
            argument2 = sootUtil.NewLocal("$r1", RefType.v("com.google.android.gms.example.bannerexample.MyActivity"));
            newbody.getLocals().add(argument2);

            // Generate r0 := @this: com.google.android.gms.example.bannerexample.MyActivity$2;
            IdentityStmt thisStmt = sootUtil.NewIdentityStmtParameterRefThis(publicVariableStringClassToInject, 0, argument1);
            sootunits.add(thisStmt);

            //Generate $r1 := @parameter0: com.google.android.gms.example.bannerexample.MyActivity;
            sootunits.add(sootUtil.NewIdentityStmtParameterRef(publicVariableStringClassToInjectAdlistener, 0, argument2));


            //GENERATE r0.<com.google.android.gms.example.bannerexample.MyActivity$2: com.google.android.gms.example.bannerexample.MyActivity this$0> = $r1;
            Value sootfieldref = Jimple.v().newInstanceFieldRef(thisStmt.getLeftOpBox().getValue(), publicVariableSootClass.getFieldByName("this$0").makeRef());
            AssignStmt IdentityStmtNew = newAssignStmt(sootfieldref, argument2);
            sootunits.add(IdentityStmtNew);
            
            //Generate specialinvoke r0.<com.google.android.gms.ads.AdListener: void <init>()>();
            Value valueofinterest = thisStmt.getLeftOpBox().getValue();
            SootMethodRef sootmethodofinterest = publicVariableSootClass.getSuperclass().getMethod("void <init>()").makeRef();
            List<Value> emptylist = Collections.<Value>emptyList();
            SpecialInvokeExpr specialInvokeExprAdListener = Jimple.v().newSpecialInvokeExpr(argument1,sootmethodofinterest, emptylist);
            Unit unitToAdd = Jimple.v().newInvokeStmt(specialInvokeExprAdListener);
            sootunits.add(unitToAdd);
            sootunits.add(Jimple.v().newReturnVoidStmt());

            return newbody;
    }
    public static void IterateUnitsAndInsertLog(UnitPatchingChain units, String stringMethodCallToSearchFor, String MethodName, String stringAdFlag, String stringInvokeType){
        SootUtil sootUtil = new SootUtil();
         for (Iterator<Unit> unit = units.snapshotIterator(); unit.hasNext();)
        {
            Unit LastKnownUnit = unit.next();
            String stringLastKnownUnit = LastKnownUnit.toString();
            if(stringLastKnownUnit.contains(stringMethodCallToSearchFor) && stringLastKnownUnit.contains(stringInvokeType)){
                String Message = MethodName + ":" + LastKnownUnit.toString();
                sootUtil.InsertLogMessageAfterUnit(stringAdFlag+":" + Message, LastKnownUnit, units); 
            }
            
        }

    }
    public static String GetClassesOfInterest(String stringMethodCallToSearchFor, String stringAdFlag, String stringInvokeType){
        for (Iterator<SootClass> clIt = Scene.v().getApplicationClasses().iterator(); clIt.hasNext();) {
            final SootClass cl = clIt.next();
            Iterator<SootMethod> SootMethodsIt = cl.methodIterator();
            while (SootMethodsIt.hasNext()) {
                SootMethod currentSootMethod = SootMethodsIt.next();
                if(currentSootMethod.hasActiveBody()){
                    Body body = currentSootMethod.getActiveBody();
                    UnitPatchingChain Units = body.getUnits();
                    String stringUnits = Units.toString();
                    if(stringUnits.contains(stringMethodCallToSearchFor)){
                        // Print("Chain:"+cl.toString());
                        String stringCurrentMethod = stringMethodCallToSearchFor.split("\\(")[0];
                        stringCurrentMethod = stringCurrentMethod.replaceAll("void ", "").replaceAll("com.google.android.gms.ads.AdRequest ","").replaceAll("com.google.android.gms.ads.AdView: ","");
                        // IterateUnitsAndInsertLog(Units, stringMethodCallToSearchFor, stringCurrentMethod, stringAdFlag, stringInvokeType);                       
                        return cl.toString();
                    }
                }                  
            }                      
        }
        return "";
    }

    // public static void InjectNewClass() throws IOException
    public static void InjectNewClass()
    {
        Print("Injecting New Class");
        SootUtil sootUtil = new SootUtil();
        boolean AdListenerExists = Scene.v().getApplicationClasses().toString().contains("com.google.android.gms.ads.AdListener");
        if(AdListenerExists)
        {
            SootMethod sootmethod;
            publicVariableSootClass = new SootClass(publicVariableStringClassToInject);

            publicVariableSootClass.setSuperclass(Scene.v().getSootClass("com.google.android.gms.ads.AdListener"));
            Scene.v().addClass(publicVariableSootClass);
            publicVariableSootClass.setApplicationClass();
            //CREATE FIELD: final com.google.android.gms.example.bannerexample.MyActivity this$0;
            sootUtil.AddFinalFieldToSootClass(publicVariableSootClass, "this$0", publicVariableStringClassToInjectAdlistener);

            sootmethod = new SootMethod("<init>", Arrays.asList(new Type[] {RefType.v(publicVariableStringClassToInjectAdlistener)}), VoidType.v());
            publicVariableSootClass.addMethod(sootmethod);

            JimpleBody newbody = InitBody(sootmethod);
            sootmethod.setActiveBody(newbody);

            // Generate method public void onAdClicked()
            SootMethod sootmethod_onAdClicked = new SootMethod("onAdClicked", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            publicVariableSootClass.addMethod(sootmethod_onAdClicked);

            // Set method source for all methods
            ClassLiteralMethodSourceonAdClicked sootmethodsource = new ClassLiteralMethodSourceonAdClicked();
            sootmethodsource.publicVariableStringClassToInject = publicVariableStringClassToInject;
            sootmethodsource.sootclass = publicVariableSootClass;
            sootmethodsource.strMethodToInject = "void onAdClicked()";
            sootmethod_onAdClicked.setSource(sootmethodsource);

            // Generate method public void onAdClosed()
            sootmethodsource = new ClassLiteralMethodSourceonAdClicked();
            sootmethodsource.publicVariableStringClassToInject = publicVariableStringClassToInject;
            sootmethodsource.sootclass = publicVariableSootClass;
            sootmethodsource.strMethodToInject = "void onAdClosed()";
            SootMethod sootmethod_onAdClosed = new SootMethod("onAdClosed", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            publicVariableSootClass.addMethod(sootmethod_onAdClosed);            
            sootmethod_onAdClosed.setSource(sootmethodsource);

            //Generate void onAdImpression()
            sootmethodsource = new ClassLiteralMethodSourceonAdClicked();
            sootmethodsource.publicVariableStringClassToInject = publicVariableStringClassToInject;
            sootmethodsource.sootclass = publicVariableSootClass;
            sootmethodsource.strMethodToInject = "void onAdImpression()";
            SootMethod sootmethod_onAdImpression = new SootMethod("onAdImpression", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            publicVariableSootClass.addMethod(sootmethod_onAdImpression);            
            sootmethod_onAdImpression.setSource(sootmethodsource);

            //Generate void onAdLoaded()
            sootmethodsource = new ClassLiteralMethodSourceonAdClicked();
            sootmethodsource.publicVariableStringClassToInject = publicVariableStringClassToInject;
            sootmethodsource.sootclass = publicVariableSootClass;
            sootmethodsource.strMethodToInject = "void onAdLoaded()";
            SootMethod sootmethod_onAdLoaded = new SootMethod("onAdLoaded", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            publicVariableSootClass.addMethod(sootmethod_onAdLoaded);            
            sootmethod_onAdLoaded.setSource(sootmethodsource);

            //Generate void onAdOpened()
            sootmethodsource = new ClassLiteralMethodSourceonAdClicked();
            sootmethodsource.publicVariableStringClassToInject = publicVariableStringClassToInject;
            sootmethodsource.sootclass = publicVariableSootClass;
            sootmethodsource.strMethodToInject = "void onAdOpened()";
            SootMethod sootmethod_onAdOpened = new SootMethod("onAdOpened", new LinkedList(), VoidType.v(), Modifier.PUBLIC);
            publicVariableSootClass.addMethod(sootmethod_onAdOpened);            
            sootmethod_onAdOpened.setSource(sootmethodsource);
        }
        Print("Finished Injecting New Class");
    }

    public static void IterateOverUnitsAndInsertLogMessage(Body body, String App_Name, String Hash, String Class, String MethodName, String Parameters){
        List<String> ThingstToCheck = Arrays.asList(new String[]{"onAdImpression"});
        UnitPatchingChain units = body.getUnits();
        // CONSTRUCT UNIT AND THEN USE units.addFirst(u);
        String MSG = ""+App_Name+"---"+Hash.trim()+"---Testing---"+Class+"---"+MethodName+"---"+Parameters;
        List<Value> listArgs = new ArrayList<Value>();
        listArgs.add(StringConstant.v("FiniteState"));
        listArgs.add(StringConstant.v(MSG));
        StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(), listArgs);
        InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
        String stringInvokeStatementLog = InvokeStatementLog.toString();
        // Print("Injecting"+InvokeStatementLog.toString());
        // units.addFirst(InvokeStatementLog);
        Unit unit_to_insert_after = null;
        int unitcounter = 0;
        for (Iterator<Unit> unit = units.snapshotIterator(); unit.hasNext();) {
        // for (Unit unit : units) {
            Unit LastKnownUnit = unit.next();
            String StringLastKnownUnit = LastKnownUnit.toString();
            unitcounter = unitcounter + 1;
            // String unit_string = unit.toString();
            if(unitcounter > 1) {
                unit_to_insert_after = LastKnownUnit;
                Print(StringLastKnownUnit);
                // units.insertBefore(InvokeStatementLog, LastKnownUnit);
            }
            if (StringLastKnownUnit.contains("$r5 = new java.lang.StringBuilder")){
                Print("FOUND IT:"+LastKnownUnit.getClass().toString());
                Print("FOUND IT:"+LastKnownUnit.getUseBoxes().toString());
            }
        }
        if(unit_to_insert_after != null){
            Print("Found Ad:"+MethodName);
            SootUtil sootUtil = new SootUtil();
            Local local_string_builder = sootUtil.NewLocal("$x1", RefType.v("java.lang.StringBuilder"));
            Local local_string = sootUtil.NewLocal("$x2", RefType.v("java.lang.String"));
            body.getLocals().add(local_string_builder);
            body.getLocals().add(local_string);
            // $r5 = new java.lang.StringBuilder;
            // LinkedVariableBox leftBox = new LinkedVariableBox(local_string_builder);
            // Print("leftBox:"+String.valueOf(leftBox));
            // LinkedVariableBox rightBox = new LinkedRValueBox(local_string_builder);
            // SootClass class_constant = scene.v().getSootClass("java.lang.StringBuilder");
            AssignStmt this_java_assign_stmt = sootUtil.NewAssignStmt(local_string_builder, Jimple.v().newNewExpr(RefType.v("java.lang.StringBuilder")));
            Print("this_java_assign_stmt" + String.valueOf(this_java_assign_stmt));
            List<Value> emptylist = Collections.<Value>emptyList();
            // StaticInvokeExpr timeInvoke = Jimple.v().newStaticInvokeExpr(currentTimeMillis.makeRef());      
            // AssignStmt assign_stmt_this = Jimple.v().newAssignStmt(local_string_builder, special_invoke_this);
            // units.insertBefore(assign_stmt_this,unit_to_insert_after);
            // specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();
            
            SpecialInvokeExpr special_invoke_this = Jimple.v().newSpecialInvokeExpr(local_string_builder, Scene.v().getMethod("<java.lang.StringBuilder: void <init>()>").makeRef(),emptylist);
            // Unit unitToAdd = Jimple.v().newInvokeStmt(special_invoke_this);
            // units.insertBefore(unitToAdd,unit_to_insert_after);
            // units.insertBefore(InvokeStatementLog, unit_to_insert_after);
        }
    }

    public static void main(String[] sootarguments)
    {
        Once runOnce = new Once();
        SootUtil sootUtil = new SootUtil();
        LinkedList<String> linked_listStringClassesToInvestigate = new LinkedList<String>();
    	String[] app_name =  sootarguments[0].split("/");
    	String app_name_only = app_name[app_name.length-1];
    	String command = "sha256sum " + sootarguments[0];
    	try {
    	    Process process = Runtime.getRuntime().exec(command);
    	 
    	    BufferedReader reader = new BufferedReader(
    		    new InputStreamReader(process.getInputStream()));
    	    String line;
    	    while ((line = reader.readLine()) != null) {
    		hash = String.valueOf(line).replace(sootarguments[0],"");
    		System.out.println("LINE:" + hash);
    	    }
    	 
    	    reader.close();
    	 
    	} catch (IOException e) {
    	    e.printStackTrace();
    	}
            
            System.out.println("Running analysis on: " + sootarguments[0] + "\n");
            // retrieveAllClassNamesAndMethods();
            // printAllClassNamesAndMethods();
            // setMainClassFromOptions();
            PackManager.v().getPack("jtp").add(new Transform("jtp.myInstrumenter", new BodyTransformer()
            {
                @Override
                protected void internalTransform(final Body body, String phaseName, @SuppressWarnings("rawtypes") Map options)
                {   
                    SootMethod thisMethod = body.getMethod();
                    SootClass thisClass = thisMethod.getDeclaringClass();
                    String stringClassName =  thisClass.toString();
                    String thisMethodName = thisMethod.getName();
                    
                    if (stringClassName.contains("com.google.android.gms.ads")){
                        // Print("Method Count:" + thisClass.getMethodCount());
                        // thisMethodName = thisMethod.getName();
                        Print(stringClassName + ":" + thisMethodName);
                        if(ThingstToCheck.contains(thisMethodName)){ 
                            Print("Found " + thisMethodName + "!!!");
                            IterateOverUnitsAndInsertLogMessage(body, app_name_only, hash, stringClassName, thisMethod.getName(), String.valueOf(thisMethod.getParameterTypes()));   
                            // for (int param_count : thisMethod.getParameterCount()){
                            // }
                            // Print(String.valueOf(thisMethod.getParameterTypes()));
                            // Print("Injecting Log");                       
                        }
                    }
                    // else if (stringClassName.contains("MainActivity") && thisMethodName.contains("onResume")){
                    //     IterateOverUnitsAndInsertLogMessage(body, app_name_only, hash, stringClassName, thisMethod.getName(), String.valueOf(thisMethod.getParameterTypes()));

                    // }  
                }

            }));
            String[] sootargs = {"-process-multiple-dex", "-w","-f", sootarguments[1], "-allow-phantom-refs", "-x",
            "android.support.", "-x", "android.annotation.",
            "-process-dir", sootarguments[0],
            "-output-dir", sootarguments[2],
            "-android-jars", "../../Android/platforms",
            "-src-prec", "apk",
            "-no-bodies-for-excluded",
    		"-force-overwrite"
            };
            soot.Main.main(sootargs);
        }
}
