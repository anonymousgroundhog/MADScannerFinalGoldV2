package Logging;

import soot.*;
import soot.jimple.*;
import soot.jimple.internal.*;

import java.util.*;
import java.io.*;

public class Logging {
	private static String AndroidAppName;
	// private static SootMethod thisMethod;
	// private static SootClass thisClass;
	private static String hash;

	public Logging(String appname) {
		if(appname != null){
			String[] app_name =  appname.split("/");
			String app_name_only = app_name[app_name.length-1].replace(".apk", "");
			AndroidAppName = app_name_only;
			// thisMethod = method;
			// thisClass = thisclass;

			String command = "sha256sum ../APK/" + AndroidAppName + ".apk";
			try {
				Process process = Runtime.getRuntime().exec(command);
				BufferedReader reader = new BufferedReader(
					new InputStreamReader(process.getInputStream()));
				String line;
				while ((line = reader.readLine()) != null) {
					hash = String.valueOf(line).replace(AndroidAppName,"");
				}        
				reader.close();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}
		
	}

	public static void Print(String stringvalue)
    {
        System.out.println(stringvalue);
    }

	// public static void PrintClassAndMethod(){
	// 	Print("Class:"+thisClass.getName());
	// 	Print("Class is Phantom:"+thisClass.isPhantom());
	// 	Print("Method:"+thisMethod.getName());
	// }

	public static void InjectLogOnCreate(Body body, String thisClass, String thisMethod){
		UnitPatchingChain thisunits = body.getUnits();
		String MSG = ""+AndroidAppName+"---"+hash+"---"+thisClass+"---"+thisMethod+"---"+null+"---null";
		List<Value> listArgs = new ArrayList<Value>();
		listArgs.add(StringConstant.v("FiniteState"));
		listArgs.add(StringConstant.v(MSG));
		StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(), listArgs);
		InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
		Unit LastKnownUnit = null;
		Unit unit_to_insert_after = null;
		for (Iterator<Unit> unit = thisunits.snapshotIterator(); unit.hasNext();) {
		    LastKnownUnit = unit.next();
		    // String StringLastKnownUnit = LastKnownUnit.toString();
		    // Print(LastKnownUnit.getClass().getName());
		    if(LastKnownUnit instanceof JInvokeStmt){
			    Print("!!!FOUND:"+LastKnownUnit.toString());
			    thisunits.insertAfter(InvokeStatementLog, LastKnownUnit);
			    break;
		    }
		}
		Print(thisunits.toString());
	}
}