import soot.*;
import soot.jimple.*;
import soot.util.*;
import soot.jimple.internal.*;
import soot.jimple.*;
import soot.jimple.internal.JAssignStmt.*;

import java.io.*;
import java.util.*;

public class MyTransform extends BodyTransformer {
	public static String this_app_name = null;
	public static String this_hash = null;
	private static SootInstrumentationHelper this_Helper = new SootInstrumentationHelper();

    public static void Inject_Log_Generic(String app_name_only, String hash, String this_class_name, String this_method_name, SootMethod this_method){
        SootMethodRef method_ref_log = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef();
        UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
        String MSG = app_name_only+"---"+hash+"---"+this_class_name+"---"+this_method_name+"---null";
        List<Value> listArgs = new ArrayList<Value>();
        listArgs.add(StringConstant.v("FiniteState"));
        listArgs.add(StringConstant.v(MSG));
        StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(method_ref_log, listArgs);
        InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
        Unit unit_to_insert_after = this_Helper.ReturnUnitToInjectAfter(thisunits);
	thisunits.add(InvokeStatementLog);

        if(unit_to_insert_after != null){
           this_Helper.Print("Injected log");
            thisunits.insertAfter(InvokeStatementLog, unit_to_insert_after);
        } 
    }
    @Override
    protected void internalTransform(Body body, String phaseName, Map<String, String> options) {
        // // Retrieve the method's unit chain
	SootMethod this_method = body.getMethod();
	SootClass this_class = this_method.getDeclaringClass();
	String this_method_name = this_method.getName();
	String this_class_name = this_class.getName();
	if(body.getMethod().getClass().getName().contains("com.google.android.gms.ads")){
		UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
		this_Helper.Print("Units:"+thisunits.toString());	
	}
        // // Create a new statement
        // String message = "Hello, world!";
        // StaticInvokeExpr printExpr = Jimple.v().newStaticInvokeExpr(
        //         Scene.v().getMethod("<java.lang.System: void println(java.lang.String)>").makeRef(),
        //         StringConstant.v(message)
        // );
        // InvokeStmt printStmt = Jimple.v().newInvokeStmt(printExpr);

        // // Insert the new statement as the first statement in the method
        // units.insertBefore(printStmt, units.getFirst());
    }
}
