package Soot;

import org.jf.dexlib2.immutable.reference.ImmutableFieldReference;
import org.jf.dexlib2.iface.reference.FieldReference;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.util.*;
import java.io.*;
import Soot.SootUtil;

import soot.*;
import soot.jimple.*;

public class SootInstrumenter
{
	public static String hash = null; 
	public static FileWriter writer;
	public static boolean runOnce;
	protected SootClass mainClass;	

	public static void Print(String stringvalue)
	{
		System.out.println(stringvalue);
	}

	public static String[] setupSoot(String[] sootarguments) {
		final String androidJar = "../../Android/platforms";
		final String apkFileLocation = sootarguments[0];
		final String sootLocation = "../Jar_libs/";
		String[] sootargs = {"-process-multiple-dex", "-w","-f", "J", "-allow-phantom-refs", "-x",
        // String[] sootargs = {"-process-multiple-dex", "-w","-f", "dex", "-allow-phantom-refs", "-x",
		"android.support.", "-x", "android.annotation.", "-x", "androidx.appcompat.R",
		"-process-dir", sootarguments[0],
		"-output-dir", sootarguments[1],
		"-android-jars", "../../Android/platforms",
		"-src-prec", "apk",
		"-no-bodies-for-excluded",
		"-force-overwrite", "-include-all"
		// "-force-overwrite"
	};
		
		return sootargs;
	}

	public static String GetMainClass(String[] sootarguments){
		return(sootarguments[2]);
	}

	public static void RunInstrumentationOnAPK(String[] sootarguments){
		runOnce = true;
		LinkedList<String> linked_listStringClassesToInvestigate = new LinkedList<String>();
		String[] app_name =  sootarguments[0].split("/");
		String app_name_only = app_name[app_name.length-1].replace(".apk", "");
		String command = "sha256sum " + sootarguments[0];
		String main_class = sootarguments[2];
		// try{
		// 	String filename = app_name_only+".txt";
		// 	writer = new FileWriter(filename, true);
		// } catch (IOException e) {
        //     System.out.println("An error occurred while writing to file ");
        //     e.printStackTrace();
        // }

		Print("Main Class:"+main_class);
		try {
			Process process = Runtime.getRuntime().exec(command);
			BufferedReader reader = new BufferedReader(
				new InputStreamReader(process.getInputStream()));
			String line;
			while ((line = reader.readLine()) != null) {
				hash = String.valueOf(line).replace(sootarguments[0],"");
	                //TESTING
			}        
			reader.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

	//        Print(thisJavaHelper.ConcatenateStrings(Arrays.asList("Running analysis on: ",sootarguments[0],"\n")));
		PackManager.v().getPack("jtp").add(new Transform("jtp.myInstrumenter", new BodyTransformer()
		{
			@Override
			protected void internalTransform(final Body body, String phaseName, @SuppressWarnings("rawtypes") Map options)
			{   
				SootMethod thisMethod = body.getMethod();
				SootClass thisClass = thisMethod.getDeclaringClass();
				String stringClassName =  thisClass.toString();
				String thisMethodName = thisMethod.getName();
				String thisClass_subclasses = null;
				Scene thisScene = Scene.v();
				if(runOnce){
					Print("Classes:"+thisScene.getApplicationClasses().toString());
					runOnce= false;
				}
				// String stringUnits = body.getUnits().toString();
	                //ReturnAdviewID(body);
				// SootUtil sootUtil = new SootUtil();
				boolean runOnce = true;
				
				if(thisClass.isApplicationClass() & thisMethod.isConcrete() & runOnce){
					// try {
					// 	String filename = app_name_only+".txt";
					// 	writer = new FileWriter(filename, true);
					// 	writer.write("\nClass: "+stringClassName);
					// 	writer.write("\n"+thisMethod.toString());
			        //     writer.close();
			        //     // System.out.println("Successfully wrote to file " + filename);
			        // } catch (IOException e) {
			        //     // System.out.println("An error occurred while writing to file " + filename);
			        //     e.printStackTrace();
			        // }
					// Print("\nClass: "+stringClassName);
					// Print("Short_Name: "+	thisClass.getShortName());
					// Print("Method: "+thisMethodName);
					// // Print("Is Abstract Method: " + thisMethod.isAbstract());
					// // thisClass_subclasses = sootUtil.getSubclassesOfIncluding(body.getMethod().getDeclaringClass()).toString();
					// Print("Is in Scene: "+thisClass.isInScene());
					// Print("Has Interface: "+thisClass.isInterface());
					// if(!thisClass.isInterface()){
					// 	Print("Subclasses:"+thisScene.getActiveHierarchy().getSubclassesOf(thisClass).toString());
					// }
					// runOnce = false;
				}
				// if(stringClassName.contains("com.google.android") & thisClass != null){
				// 	Print("stringClassName:"+stringClassName);
				// 	Print("stringMethodName:"+thisMethodName);
				// }
				// if (sootUtil.getSubclassesOfIncluding(thisClass).toString().contains("com.google.android.gms.ads.AdListener")){
				// 	final Scene scene = Scene.v();
			    //     Hierarchy hierarchy = scene.getActiveHierarchy();
				// 	Print("\nMethod:"+thisMethodName);
				// 	Print("Class:"+ stringClassName);
				// 	// Print("Sub-Classes: "+sootUtil.getSubclassesOfIncluding(thisClass).toString());
				// }
				// if (stringClassName.contains("com.google.android.gms.ads.AdListener")){
				// 	final Scene scene = Scene.v();
			    //     Hierarchy hierarchy = scene.getActiveHierarchy();
				// 	SootUtil sootUtil = new SootUtil();
				// 	Print("\nMethod:"+thisMethodName);
				// 	Print("Class:"+ stringClassName);
				// 	Print("Sub-Classes: "+sootUtil.getSubclassesOfIncluding(thisClass).toString());
				// }
				// else if (thisMethodName.contains("findViewById") && stringClassName.contains("androidx.appcompat.app.AppCompatActivity")){
				// 	Print("Class: "+stringClassName+ " ("+thisMethodName+")");
				// 	IterateOverUnitsAndInsertLogMessageFindView(body, app_name_only, hash, stringClassName, thisMethodName, String.valueOf(thisMethod.getParameterTypes()), thisClass);                        
				// }
				// else if (thisMethodName.contains("onCreate") && stringClassName.contains(main_class)){
				// 	SootUtil sootUtil = new SootUtil();
				// 	Print("Class: "+stringClassName+ " ("+thisMethodName+")");
				// 	UnitPatchingChain units = body.getUnits();
				// 	String MSG = ""+app_name_only+"---"+hash.trim()+"---"+stringClassName+"---"+thisMethodName+"---"+String.valueOf(thisMethod.getParameterTypes())+"---null";
				// 	List<Value> listArgs = new ArrayList<Value>();
				// 	listArgs.add(StringConstant.v("FiniteState"));
				// 	listArgs.add(StringConstant.v(MSG));
				// 	StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(), listArgs);
				// 	InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
				// 	Unit unit_to_insert_after = sootUtil.ReturnUnitOfInterest(units);
				// 	units.insertAfter(InvokeStatementLog, unit_to_insert_after);
				// }
				// else if (body.getUnits().toString().contains("setContentView") && stringClassName.contains("androidx.appcompat.app.AppCompatActivity")){
				// 	SootUtil sootUtil = new SootUtil();
				// 	Print("Class: "+stringClassName+ " ("+thisMethodName+")");
				// 	UnitPatchingChain units = body.getUnits();
				// 	Unit unit_to_insert_after = null;
				// 	// CONSTRUCT UNIT AND THEN USE units.addFirst(u);
				// 	String MSG = ""+app_name_only+"---"+hash.trim()+"---"+stringClassName+"---"+thisMethodName+"---"+String.valueOf(thisMethod.getParameterTypes())+"---null";
				// 	List<Value> listArgs = new ArrayList<Value>();
				// 	listArgs.add(StringConstant.v("FiniteState"));
				// 	listArgs.add(StringConstant.v(MSG));
				// 	StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(), listArgs);
				// 	InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
				// 	Unit LastKnownUnit = null;
				// 	for (Iterator<Unit> unit = units.snapshotIterator(); unit.hasNext();) {
				// 	    LastKnownUnit = unit.next();
				// 	    String StringLastKnownUnit = LastKnownUnit.toString();
				// 	    if(StringLastKnownUnit.contains("setContentView")){
				// 		    // Print("Insert After:"+LastKnownUnit.toString());
				// 		    unit_to_insert_after = LastKnownUnit;
				// 	    }
				// 	}
				// 	if(unit_to_insert_after != null){
				// 		units.insertAfter(InvokeStatementLog, unit_to_insert_after);
				// 	}
				// 	// units.insertAfter(InvokeStatementLog, units.getFirst());
				// }
				// else if (thisMethodName.contains("onAdClicked") && stringClassName.contains("com.google.android.gms.internal.ads.zzbek")){
				// 	SootUtil sootUtil = new SootUtil();
				// 	Print("Class: "+stringClassName+ " ("+thisMethodName+")");
				// 	UnitPatchingChain units = body.getUnits();
				// 	// CONSTRUCT UNIT AND THEN USE units.addFirst(u);
				// 	String MSG = ""+app_name_only+"---"+hash.trim()+"---"+stringClassName+"---"+thisMethodName+"---"+String.valueOf(thisMethod.getParameterTypes())+"---null";
				// 	List<Value> listArgs = new ArrayList<Value>();
				// 	listArgs.add(StringConstant.v("FiniteState"));
				// 	listArgs.add(StringConstant.v(MSG));
				// 	StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(), listArgs);
				// 	InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
				// 	units.insertAfter(InvokeStatementLog, units.getFirst());
				// }
				// else if (thisMethodName.contains("initialize") && stringClassName.contains("com.google.android.gms.ads")){
				// 	SootUtil sootUtil = new SootUtil();
				// 	Print("Class: "+stringClassName+ " ("+thisMethodName+")");
				// 	UnitPatchingChain units = body.getUnits();
				// 	// CONSTRUCT UNIT AND THEN USE units.addFirst(u);
				// 	String MSG = ""+app_name_only+"---"+hash.trim()+"---"+stringClassName+"---"+thisMethodName+"---"+String.valueOf(thisMethod.getParameterTypes())+"---null";
				// 	List<Value> listArgs = new ArrayList<Value>();
				// 	listArgs.add(StringConstant.v("FiniteState"));
				// 	listArgs.add(StringConstant.v(MSG));
				// 	StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(), listArgs);
				// 	InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
				// 	// Unit unit_to_insert_after = sootUtil.ReturnUnitOfInterest(units);
				// 	// units.insertAfter(InvokeStatementLog, unit_to_insert_after);
				// 	units.insertBefore(InvokeStatementLog, units.getLast());
				// }
				// else if (thisMethodName.contains("loadAd") && stringClassName.contains("com.google.android.gms.ads.BaseAdView")){
				// 	SootUtil sootUtil = new SootUtil();
				// 	Print("Class: "+stringClassName+ " ("+thisMethodName+")");
				// 	UnitPatchingChain units = body.getUnits();
				// 	String MSG = ""+app_name_only+"---"+hash.trim()+"---"+stringClassName+"---"+thisMethodName+"---"+String.valueOf(thisMethod.getParameterTypes())+"---null";
				// 	List<Value> listArgs = new ArrayList<Value>();
				// 	listArgs.add(StringConstant.v("FiniteState"));
				// 	listArgs.add(StringConstant.v(MSG));
				// 	StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(), listArgs);
				// 	InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
				// 	units.insertBefore(InvokeStatementLog, units.getLast());
				// }
				// else if (thisMethodName.contains("destroy") && stringClassName.contains("com.google.android.gms.ads.BaseAdView")){
				// 	SootUtil sootUtil = new SootUtil();
				// 	Print("Class: "+stringClassName+ " ("+thisMethodName+")");
				// 	UnitPatchingChain units = body.getUnits();
				// 	String MSG = ""+app_name_only+"---"+hash.trim()+"---"+stringClassName+"---"+thisMethodName+"---"+String.valueOf(thisMethod.getParameterTypes())+"---null";
				// 	List<Value> listArgs = new ArrayList<Value>();
				// 	listArgs.add(StringConstant.v("FiniteState"));
				// 	listArgs.add(StringConstant.v(MSG));
				// 	StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(), listArgs);
				// 	InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
				// 	units.insertBefore(InvokeStatementLog, units.getLast());
				// }
				// // else if (thisMethodName.contains("getAdUnitId") && stringClassName.contains("com.google.android.gms.ads.BaseAdView")){
				// // 	SootUtil sootUtil = new SootUtil();
				// // 	Print("Class: "+stringClassName+ " ("+thisMethodName+")");
				// // 	UnitPatchingChain units = body.getUnits();
				// // 	Local str_local = sootUtil.getLocalUnsafe(body, "java.lang.String");
				// // 	String MSG = ""+app_name_only+"---"+hash.trim()+"---"+stringClassName+"---"+thisMethodName+"---"+String.valueOf(thisMethod.getParameterTypes())+"---null";
				// // 	List<Value> listArgs = new ArrayList<Value>();
				// // 	listArgs.add(StringConstant.v("FiniteState"));
				// // 	listArgs.add(StringConstant.v(MSG));
				// // 	StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(), listArgs);
				// // 	InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
				// // 	units.insertBefore(InvokeStatementLog, units.getLast());
				// // 	Print("Local:"+str_local.toString());

				// // }
				// else if (thisMethodName.contains("onAdImpression") && stringClassName.contains("com.google.android.gms.ads.AdListener")){
				// 	SootUtil sootUtil = new SootUtil();
				// 	Print("Class: "+stringClassName+ " ("+thisMethodName+")");
				// 	UnitPatchingChain units = body.getUnits();
				// 	// String MSG = ""+app_name_only+"---"+hash.trim()+"---"+stringClassName+"---"+thisMethodName+"---"+String.valueOf(thisMethod.getParameterTypes())+"---null";
				// 	// List<Value> listArgs = new ArrayList<Value>();
				// 	// listArgs.add(StringConstant.v("FiniteState"));
				// 	// listArgs.add(StringConstant.v(MSG));
				// 	// StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(), listArgs);
				// 	// InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
				// 	// units.insertBefore(InvokeStatementLog, units.getLast());

				// 	LocalGenerator localgenerator = Scene.v().createLocalGenerator(body);
				// 	Local local_baseadview_class = sootUtil.getLocalUnsafeClass(body, "com.google.android.gms.ads.BaseAdView"); 
				// 	Local local_this_class = sootUtil.getLocalUnsafeClass(body, stringClassName); 
				// 	Local local_java_lang_string = sootUtil.getLocalUnsafe(body, "java.lang.String");
				// 	if (local_java_lang_string == null){
				// 		local_java_lang_string = localgenerator.generateLocal(RefType.v("java.lang.String"));
				// 	}
				// 	if (local_this_class == null){
				// 		local_this_class = localgenerator.generateLocal(RefType.v(stringClassName));
				// 	}
				// 	if (local_baseadview_class == null){
				// 		local_baseadview_class = localgenerator.generateLocal(RefType.v("com.google.android.gms.ads.BaseAdView"));
				// 	}
					
				// 	AssignStmt this_baseadview_stmt = sootUtil.NewAssignStmt(local_baseadview_class, Jimple.v().newNewExpr(RefType.v("com.google.android.gms.ads.BaseAdView")));
				// 	units.insertBefore(this_baseadview_stmt, units.getLast());
				// 	List<Value> listArgs = new ArrayList<Value>();
				// 	VirtualInvokeExpr virtualinvoke = Jimple.v().newVirtualInvokeExpr(local_baseadview_class, Scene.v().getMethod("<com.google.android.gms.ads.BaseAdView: java.lang.String getAdUnitId()>").makeRef(), listArgs);
				//     AssignStmt stmt_virtualinvoke  = Jimple.v().newAssignStmt(local_java_lang_string, virtualinvoke);
				//     units.insertAfter(stmt_virtualinvoke, this_baseadview_stmt);

				//     // String MSG = ""+app_name_only+"---"+hash.trim()+"---"+stringClassName+"---"+thisMethodName+"---"+String.valueOf(thisMethod.getParameterTypes())+"---"+local_java_lang_string;
				//     // listArgs = new ArrayList<Value>();
				// 	// listArgs.add(StringConstant.v("FiniteState"));
				// 	// listArgs.add(StringConstant.v(MSG));
				// 	// StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(), listArgs);
				// 	// InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
				// 	// units.insertAfter(InvokeStatementLog, stmt_virtualinvoke);
				// }
			}
		}));
		Main.main(setupSoot(sootarguments));
	}	
	
	public static void IterateOverUnitsAndInsertLogMessageFindView(Body body, String App_Name, String Hash, String Class, String MethodName, String Parameters, SootClass thisClass){
			//List<String> ThingstToCheck = Arrays.asList(new String[]{"onAdImpression"});
		UnitPatchingChain units = body.getUnits();
			// CONSTRUCT UNIT AND THEN USE units.addFirst(u);
		String MSG = ""+App_Name+"---"+Hash.trim()+"---"+Class+"---"+MethodName+"---"+Parameters+"---null";
		List<Value> listArgs = new ArrayList<Value>();
		listArgs.add(StringConstant.v("FiniteState"));
		listArgs.add(StringConstant.v(MSG));
		StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(), listArgs);
		InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
		SootUtil sootUtil = new SootUtil();
			//Unit unit_to_insert_after = sootUtil.ReturnUnitOfInterest(units);
		if(MethodName.contains("findViewById")){
			// Print("UNIQUE CASE:"+MethodName);
			List<Object> object_java_lang_stringbuilder = sootUtil.CheckIfRefTypeExists(body, "java.lang.StringBuilder");
			List<Object> object_java_lang_string = sootUtil.CheckIfRefTypeExists(body, "java.lang.String");
			List<Object> object_this_class = sootUtil.CheckIfRefTypeExists(body, Class); 
			LocalGenerator localgenerator = Scene.v().createLocalGenerator(body);
			Local local_java_lang_stringbuilder = null;
			Local local_java_lang_string = null;
			Local local_this_class = null;

			if((Boolean) object_java_lang_string.get(0)){
				// local_java_lang_stringbuilder = sootUtil.getLocalAtLocation(body,(int) object_java_lang_string.get(1));
				local_java_lang_stringbuilder = (Local) object_java_lang_string.get(2);
			}else{
				local_java_lang_stringbuilder = localgenerator.generateLocal(RefType.v("java.lang.StringBuilder"));
			}
			
			if((Boolean) object_java_lang_string.get(0)){
				// local_java_lang_stringbuilder = sootUtil.getLocalAtLocation(body,(int) object_java_lang_string.get(1));
				local_java_lang_string = (Local) object_java_lang_string.get(2);
			}else{
				local_java_lang_string = localgenerator.generateLocal(RefType.v("java.lang.String"));
			}

			if((Boolean) object_this_class.get(0)){
				// local_java_lang_stringbuilder = sootUtil.getLocalAtLocation(body,(int) object_java_lang_string.get(1));
				local_this_class = (Local) object_this_class.get(2);
			}else{
				local_this_class = localgenerator.generateLocal(RefType.v("java.lang.String"));
			}
			

			Unit unit_to_insert_after = units.getLast();
			// $r1 = new java.lang.StringBuilder;
			AssignStmt this_java_assign_stmt = sootUtil.GenerateAndReturnNewAssignmentStatementStringBuilder(local_java_lang_stringbuilder);
		    units.insertBefore(this_java_assign_stmt,unit_to_insert_after);
		     // units.addLast(this_java_assign_stmt);
			
			// specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();
		    SpecialInvokeExpr special_invoke_this = Jimple.v().newSpecialInvokeExpr(local_java_lang_stringbuilder, Scene.v().getMethod("<java.lang.StringBuilder: void <init>()>").makeRef());
			Unit unitToAdd = Jimple.v().newInvokeStmt(special_invoke_this);
			units.insertAfter(unitToAdd,this_java_assign_stmt);

			// $r1 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Test---");
			List<Value> listArgsLog = new ArrayList<Value>();
			listArgsLog.add(StringConstant.v(MSG+"---"));
			VirtualInvokeExpr virtualinvoke = Jimple.v().newVirtualInvokeExpr(local_java_lang_stringbuilder, Scene.v().getMethod("<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>").makeRef(), listArgsLog);
			Unit unitToAdd2 = Jimple.v().newInvokeStmt(virtualinvoke);
			units.insertAfter(unitToAdd2 ,unitToAdd);
			
			// $r1 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);
			Local int_local = sootUtil.getLocalUnsafe(body, "int");
			listArgs = new ArrayList<Value>();
			listArgs.add(int_local);
			virtualinvoke = Jimple.v().newVirtualInvokeExpr(local_java_lang_stringbuilder, Scene.v().getMethod("<java.lang.StringBuilder: java.lang.StringBuilder append(int)>").makeRef(), listArgs);
			Unit unitToAdd3 = Jimple.v().newInvokeStmt(virtualinvoke);
			units.insertAfter(unitToAdd3, unitToAdd2);
			

			// $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();
			virtualinvoke = Jimple.v().newVirtualInvokeExpr(local_java_lang_stringbuilder, Scene.v().getMethod("<java.lang.StringBuilder: java.lang.String toString()>").makeRef());
			// Print("Test:"+virtualinvoke.toString());
			AssignStmt assignment_statement4 = Jimple.v().newAssignStmt(local_java_lang_string, virtualinvoke);
			units.insertAfter(assignment_statement4, unitToAdd3);
			
			// staticinvoke <android.util.Log: int d(java.lang.String,java.lang.String)>("FiniteState", $r2);
			listArgs = new ArrayList<Value>();
			listArgs.add(StringConstant.v("FiniteState"));
			listArgs.add(local_java_lang_string);
			LogInvokeStmt = Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(), listArgs);
			InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
			units.insertAfter(InvokeStatementLog,assignment_statement4);
		}
	}
}