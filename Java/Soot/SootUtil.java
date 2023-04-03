package Soot;

import java.util.Iterator;
import java.util.*;
import Conditions.SootConditionChecker;
import ClassHelper.ClassLiteralMethodSourceonAdClicked;

import soot.*;
import soot.Value;
import soot.jimple.*;
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

import java.io.*;
import soot.options.Options;
import soot.jimple.internal.*;
import org.jf.dexlib2.immutable.reference.ImmutableFieldReference;
import org.jf.dexlib2.iface.reference.FieldReference;
import org.openjdk.jol.vm.VM;

public class SootUtil
{
    private static List<String> MethodsFoundArray = new ArrayList<String>();
    public static ArrayList<String> stringAdUnitsInserted = new ArrayList<>();

    // //NOT AD SPECIFIC
    public static String[] StringArrayOfVirtualInvokeMethodsToLookForNotAdSpecific = {"void setContentView(int)", "android.view.View findViewById(int)"};
    public static String[] StringArrayOfSpecialInvokeMethodsToLookForNotAdSpecific = {"void onCreate(android.os.Bundle)>($r1)"};
    private static boolean runOnce = true;
    public static boolean hasAdListener = false;
    public static String StringMethodToInvestigate;
    public static String StringClassToInvestigate;
    public static String publicVariableStringClassToInjectAdlistener = null;
    public static String publicVariableStringClassToInject = null;
    private static SootClass publicVariableSootClass;
    
    public SootClass ReturnSootClass(String thisstringclass){
        return Scene.v().getSootClass(thisstringclass);
    }

    public AssignStmt GenerateAndReturnNewAssignmentStatementStringBuilder(Local local_java_lang_stringbuilder){
        return NewAssignStmt(local_java_lang_stringbuilder, Jimple.v().newNewExpr(RefType.v("java.lang.StringBuilder")));
    }
    public static Optional<Unit> ExtractUnitWithKeyword(Body body, String keyword) {
        Chain<Unit> units = body.getUnits();
        
        for (Unit unit : units) {
            if (unit.toString().contains(keyword)) {
                return Optional.of(unit);
            }
        }

        return Optional.empty();
    }

    public Unit ReturnUnitOfInterest(UnitPatchingChain thisunits){
	    Unit LastKnownUnit = null;
//	    if(thisunits.toString().contains("@parameter")){
//		for (Iterator<Unit> unit = thisunits.snapshotIterator(); unit.hasNext();) {
//		    LastKnownUnit = unit.next();
//		    String StringLastKnownUnit = LastKnownUnit.toString();
//		    Boolean is_identity_statement = (LastKnownUnit instanceof IdentityStmt);
//		    if(StringLastKnownUnit.contains("parameter")){
//			    Print(StringLastKnownUnit);
//			    return unit.next();
//		    }
//		}
//	    }else{
		for (Iterator<Unit> unit = thisunits.snapshotIterator(); unit.hasNext();) {
		    LastKnownUnit = unit.next();
		    String StringLastKnownUnit = LastKnownUnit.toString();
		    if(StringLastKnownUnit.contains("specialinvoke")){
			    // Print("Insert After:"+LastKnownUnit.toString());
			    return LastKnownUnit;
		    }
		}
//	    }
        return LastKnownUnit;
    }
    private Boolean LocalExists(Body b, String name) {
        for (Local local : b.getLocals()) {
          if (local.getName().equals(name)) {
            return true;
          }
        }
        return false;
    }
    public Local CreateAndAddLocalToBody(Body body, String thislocalvar, String thislocalRef){
        Local thislocal = Jimple.v().newLocal(thislocalvar, RefType.v(thislocalRef));
        body.getLocals().add(thislocal);
        return thislocal;
    }
    public VirtualInvokeExpr GenerateAndReturnNewVirtualInvokeExpression(Local thislocal, SootMethodRef thismethodref, Value thisarg){
        return Jimple.v().newVirtualInvokeExpr(thislocal, thismethodref, thisarg);
    }
    public AssignStmt GenerateAndReturnNewAssignmentStatement(Local thislocal, FieldRef thisfieldref){
        return Jimple.v().newAssignStmt(thislocal, thisfieldref);
    }
    public AssignStmt GenerateAndReturnNewAssignmentStatementVirtualInvoke(Local thislocal, VirtualInvokeExpr thisvirtualinvoke){
        return Jimple.v().newAssignStmt(thislocal, thisvirtualinvoke);
    }
    // ReturnMethodFromClass
    public SootMethodRef GenerateAndReturnMethodRefFromClass(soot.SootClass sootClass, String name, ArrayList paramTypes,
        Type returnType, boolean isStatic) {
        SootMethodRef ref = Scene.v().makeMethodRef(sootClass, name, paramTypes, returnType, isStatic);
        return ref;
    }

    public List<Object> CheckIfRefTypeExists(Body b, String name){
        int counter = -1;
        for (Local local : b.getLocals()) {
            counter = counter + 1;
            // Print("Local:"+local.getType().toString());
            if(local.getType().toString().contains(name)){
                return Arrays.asList(true,counter,local);
            }
        }
        return Arrays.asList(false, null,null);

    }
    public Local getLocalAtLocation(Body b, int loc) {
        int counter = -1;
        for (Local local : b.getLocals()) {
            counter = counter + 1;
            if(counter == loc){
                return local;
            }
        }
        return null;
    }
    public Local getLocalUnsafeClass(Body b, String name) {
        for (Local local : b.getLocals()) {
            if(local.getType().toString().contains(name)){
                return local;
            }
        }
        // Print("null returned for: " + name + " (method " + b.getMethod().getName() + ")");
        return null;
    }
    public Local getLocalUnsafe(Body b, String name) {
        List<String> listTypes = new ArrayList<String>();
        for (Local local : b.getLocals()) {
            listTypes.add(local.getType().toString());
            if (local.getType().toString().contains(name)) {
                return local;
            }
        }
    	return null;
    }
    public static void Print(String stringvalue)
    {
        System.out.println(stringvalue);
    }

    public AssignStmt NewAssignStmt(Value variable, Value rvalue) 
    {
        return new JAssignStmt(variable, rvalue);
    }
    // the following setting should be changed to the local path
    public static Local NewLocal(String strlocal, Type valueref)
    {
        return Jimple.v().newLocal(strlocal, valueref);
    }

    public static ValueBox newLocalBox(Value value)
    {
        return Jimple.v().newLocalBox(value);
    }

    // public VirtualInvokeExpr newVirtualInvokeExpr(Local base, SootMethodRef method, Value arg) {
    //     return newVirtualInvokeExpr(base, method, Collections.<Value>singletonList(arg));
    // }

    public static IdentityStmt NewIdentityStmtParameterRef(String strClassToInjectAdListenerClass, int intVal, Local arg)
    {
        ParameterRef ParamRefInit = Jimple.v().newParameterRef(RefType.v(strClassToInjectAdListenerClass), intVal);
        return Jimple.v().newIdentityStmt(arg, ParamRefInit);
    }

    public static IdentityStmt NewIdentityStmtParameterRefThis(String strClassToInjectAdListenerClass, int intVal, Local arg)
    {
        ThisRef RefThis = Jimple.v().newThisRef(RefType.v(strClassToInjectAdListenerClass));
        return Jimple.v().newIdentityStmt(arg, RefThis);
    }

    public static void AddFinalFieldToSootClass(SootClass sClass, String strVar, String strClassToInjectAdListenerClass)
    {
        SootField field = Scene.v().makeSootField(strVar, RefType.v(strClassToInjectAdListenerClass), Modifier.FINAL);
        sClass.addField(field);
    }

    public static SootField AddPrivateFieldToSootClassIfExistsAndReturn(SootClass sClass, String strVar, String strClassToInjectAdListenerClass)
    {
        if (!sClass.getFields().toString().contains(strVar)){
            // sootfieldref = sootUtil.AddPrivateFieldToSootClass(thisClass, "adView", Class);
            SootField field = Scene.v().makeSootField(strVar, RefType.v(strClassToInjectAdListenerClass), Modifier.PRIVATE);
            sClass.addField(field);
            return field;
        }else{
            SootField field = sClass.getFieldByName(strVar);
            return field;
        }

    }

    public static void InsertLogMessageAfterUnit(String Message, Unit LastKnownUnit, UnitPatchingChain units)
    {
        List<Value> listArgs = new ArrayList<Value>();
        listArgs.add(StringConstant.v("FiniteState"));
        listArgs.add(StringConstant.v(Message));
        StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(), listArgs);
        InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
        String stringInvokeStatementLog = InvokeStatementLog.toString();
        // Print("Message:"+Message);
        // if(!stringInvokeStatementLog.contains("findView")){
        Print(stringInvokeStatementLog);
        // }
        String stringLastAdUnitInserted = InvokeStatementLog.toString();
        // Print("LastKnownUnit TEST:"+LastKnownUnit.toString()+"\nNew Unit:"+InvokeStatementLog.toString());
        int intStringAdUnitsInsertedSize= stringAdUnitsInserted.size()-1;

        // if(intStringAdUnitsInsertedSize > 0 && !stringLastAdUnitInserted.equals(null)){
        if(intStringAdUnitsInsertedSize > 0){
            if(!stringLastAdUnitInserted.contains(stringAdUnitsInserted.get(stringAdUnitsInserted.size()-1))){
                stringAdUnitsInserted.add(new String(Message));
                units.insertAfter(InvokeStatementLog, LastKnownUnit);
                if(InvokeStatementLog.toString().contains("ADRELATED")){
                    Print("Injecting"+InvokeStatementLog.toString()); 
                }                
            }
        }else{
            stringAdUnitsInserted.add(new String(stringInvokeStatementLog.toString()));
            units.insertAfter(InvokeStatementLog, LastKnownUnit); 
        }
        
        // units.insertAfter(InvokeStatementLog, LastKnownUnit);
    }

    private static void IterateOverListAndInsertLogMessage(String InputMsg, String[] ArrayOfStatements, Unit LastKnownUnit, UnitPatchingChain units, String MethodName, boolean AdSpecific)
    {
        
        for (String StringMethod : ArrayOfStatements)
        {
            if(LastKnownUnit.toString().contains(StringMethod) & !AdSpecific)
            {
		System.out.println("Found ad Specific call:"+LastKnownUnit.toString());
                String Message = MethodName + ":" + LastKnownUnit.toString();
		String MSG = InputMsg + Message+"---";
		Stmt stmt = (Stmt) LastKnownUnit;
                Local local = localDef(LastKnownUnit);
		List<Value> args = null;
		if (stmt.containsInvokeExpr()) {
			InvokeExpr invocation = stmt.getInvokeExpr();
			args = invocation.getArgs();
		}

                if(local != null){
			MSG =InputMsg + Message+"---";
			MSG +=local.toString()+"="+ VM.current().addressOf(local);
			if(args != null){
				for (Value arg : args) {
					if(arg.toString().contains("$")){
						MSG +=  " " +arg.toString() + "=" + VM.current().addressOf(arg) + " ";
					}
				}
			} else {
				MSG +=" " +local.toString()+"="+ VM.current().addressOf(local)+ " ";
			}
                    InsertLogMessageAfterUnit(MSG, LastKnownUnit, units);
                    local = null;
                }else{
			MSG =InputMsg + Message+"---";
			if(args != null){
				for (Value arg : args) {
					if(arg.toString().contains("$")){
						MSG += " " +arg.toString() + "=" + VM.current().addressOf(arg)+ " ";
					}
				}
			} else{
				MSG += "---";
			}
                        InsertLogMessageAfterUnit(MSG, LastKnownUnit, units);
	       }
            }

            if(LastKnownUnit.toString().contains(StringMethod) & AdSpecific)
            {
                String Message = MethodName + ":" + LastKnownUnit.toString();
		String MSG = InputMsg + Message+"---";
		//System.out.println("ADSPECIFIC!!!");
		Stmt stmt = (Stmt) LastKnownUnit;
		List<Value> args = null;
		if (stmt.containsInvokeExpr()) {
			InvokeExpr invocation = stmt.getInvokeExpr();
			args = invocation.getArgs();
		}

                if(!MethodsFoundArray.contains(StringMethod))
                {
                    MethodsFoundArray.add(StringMethod);
                    Local local = localDef(LastKnownUnit);
                    if(local != null){
			    MSG =InputMsg + Message+"---";
			    if(args != null){
				 for (Value arg : args) {
					 if(arg.toString().contains("$")){
						 MSG +=  " " +arg.toString() + "=" + VM.current().addressOf(arg)+ " ";
					 }
				 }
			    } else{
				MSG +=" " +local.toString()+"="+ VM.current().addressOf(local)+ " ";
			    }
                    InsertLogMessageAfterUnit(MSG, LastKnownUnit, units);
                    local = null;
                    }else{
			    MSG =InputMsg + Message+"---";
			    if(args != null){
				 for (Value arg : args) {
					 if(arg.toString().contains("$")){
						 MSG += " " +arg.toString() + "=" + VM.current().addressOf(arg)+ " ";
					 }
				 }
			    } else{
			MSG += "---";
			    }
                        InsertLogMessageAfterUnit(MSG, LastKnownUnit, units);
                    }
                }
	    }
        }
    }
    public static void Wait(int ms)
    {
        try
        {
            Thread.sleep(ms);
        }
        catch(InterruptedException ex)
        {
            Thread.currentThread().interrupt();
        }
    }
    public static void InvestigateClassAndInjectAdListenerCalls(Body body)
    {
        if(StringClassToInvestigate != null && StringMethodToInvestigate != null)
        {
            // Print("Data:" + StringClassToInvestigate + " : " + StringMethodToInvestigate);
            Wait(10);
            SootClass classToInvestigate = Scene.v().getSootClass(StringClassToInvestigate);
            SootMethod methodToInvestigate = classToInvestigate.getMethod(StringMethodToInvestigate);
            Body bodyToInvestigate = methodToInvestigate.getActiveBody();
            UnitPatchingChain units = body.getUnits();
            SootConditionChecker sootconditionchecker = new SootConditionChecker();
            for (Iterator<Unit> unit = units.snapshotIterator(); unit.hasNext();)
            {
                Unit LastKnownUnit = unit.next();
                String StringLastKnownUnit = LastKnownUnit.toString();
                boolean LastKnownUnitIsAStmt = sootconditionchecker.LastKnownUnitIsAStatement(LastKnownUnit);
                if (LastKnownUnitIsAStmt)
                {
                    for (ValueBox SootValuebox : LastKnownUnit.getUseBoxes())
                    {
                        Value SootValue = SootValuebox.getValue();
                        VirtualInvokeExpr VirtualInvokeExpression = null;
                        SpecialInvokeExpr SpecialInvokeExpression = null;
                        StaticInvokeExpr StaticInvokeExpression = null;
                        String MethodName = null;
                        boolean SootValueIsAVirtualInvokeExpr = sootconditionchecker.ValueIsAVirtualInvokeExpr(SootValue);
                        boolean SootValueIsASpecialInvokeExpr = sootconditionchecker.ValueIsASpecialInvokeExpr(SootValue);
                        boolean SootValueIsAStaticInvokeExpr = sootconditionchecker.ValueIsAStaticInvokeExpr(SootValue);
                    }
                }
            }
        }
    }
    private static Local localDef(Unit u) {
        List<ValueBox> defBoxes = u.getDefBoxes();
        int size = defBoxes.size();
        
        if (size == 0) {
            return null;
        }
        
        if (size != 1) {
            throw new RuntimeException();
        }
        ValueBox vb = defBoxes.get(0);
        Value v = vb.getValue();
        
        if (!(v instanceof Local)) {
            return null;
        }
        return (Local) v;
    }

    public static void IterateOverUnitsandInjectAdSpecificCalls(Body body, String App_Name, String Hash)
    {
        SootConditionChecker sootconditionchecker = new SootConditionChecker();
        UnitPatchingChain units = body.getUnits();
        String MethodNameOfInterst = null;
        if(runOnce)
        {
            for (Local local : body.getLocals())
            {
                if(local.getType().toString().contains("com.google.android.gms.ads.admanager.AdManagerAdView"))
                {
                    hasAdListener = true;
                    runOnce = false;
                }
            }
        }

        for (Iterator<Unit> unit = units.snapshotIterator(); unit.hasNext();)
        {
            Unit LastKnownUnit = unit.next();
            String StringLastKnownUnit = LastKnownUnit.toString();
            boolean LastKnownUnitIsAStmt = sootconditionchecker.LastKnownUnitIsAStatement(LastKnownUnit);
            if(StringLastKnownUnit.contains("com.google.android.gms.example.bannerexample.MyActivity this$0"))
            {
                Print("FOUND:" + StringLastKnownUnit);
            }
            if (LastKnownUnitIsAStmt)
            {
                for (ValueBox SootValuebox : LastKnownUnit.getUseBoxes())
                {
                    Value SootValue = SootValuebox.getValue();
                    VirtualInvokeExpr VirtualInvokeExpression = null;
                    SpecialInvokeExpr SpecialInvokeExpression = null;
                    StaticInvokeExpr StaticInvokeExpression = null;
                    String MethodName = null;
                    boolean SootValueIsAVirtualInvokeExpr = sootconditionchecker.ValueIsAVirtualInvokeExpr(SootValue);
                    boolean SootValueIsASpecialInvokeExpr = sootconditionchecker.ValueIsASpecialInvokeExpr(SootValue);
                    boolean SootValueIsAStaticInvokeExpr = sootconditionchecker.ValueIsAStaticInvokeExpr(SootValue);

                    if(SootValueIsAVirtualInvokeExpr)
                    {
                        VirtualInvokeExpression = (VirtualInvokeExpr) SootValue;
                        MethodName = VirtualInvokeExpression.getMethod().getName().toString();

			String MSG = ""+App_Name+"---"+Hash.trim()+"---Testing---"+LastKnownUnit.toString()+"---";
			Local local = localDef(LastKnownUnit);
			Stmt stmt = (Stmt) LastKnownUnit;
			InvokeExpr invocation = stmt.getInvokeExpr();
			List<Value> args = invocation.getArgs();
			if(args != null){
				for (Value arg : args) {
					if(arg.toString().contains("$")){
						MSG +=  " " +arg.toString() + "=" + VM.current().addressOf(arg) + " ";
					}
				}
			} else {
				MSG +=" " +local.toString()+"="+ VM.current().addressOf(local)+ " ";
			}
			
                        InsertLogMessageAfterUnit(MSG, LastKnownUnit, units);

//                        IterateOverListAndInsertLogMessage(""+App_Name+"::"+Hash+"::", StringArrayOfVirtualInvokeMethodsToLookForNotAdSpecific, LastKnownUnit, units, MethodName+":", false);
//                        IterateOverListAndInsertLogMessage(App_Name+"::"+Hash+"::", StringArrayOfVirtualInvokeMethodsToLookForAdSpecificMultipleTimesSearchFor, LastKnownUnit, units, MethodName+":", false);
//                        IterateOverListAndInsertLogMessage(App_Name+"::"+Hash+"::", StringArrayOfVirtualInvokeMethodsToLookForAdSpecific, LastKnownUnit, units, MethodName+":", true);

                        if(StringLastKnownUnit.contains("void loadAd(com.google.android.gms.ads.admanager.AdManagerAdRequest)") || StringLastKnownUnit.contains("void loadAd(com.google.android.gms.ads.AdRequest)"))
                        {
                            StringMethodToInvestigate = body.getMethod().getSignature().toString();
                            StringClassToInvestigate = body.getMethod().getDeclaringClass().toString();                           
                        }
                    }

                    if(SootValueIsAStaticInvokeExpr)
                    {
                        StaticInvokeExpression = (StaticInvokeExpr) SootValue;
                        MethodName = StaticInvokeExpression.getMethod().getName().toString();
			String MSG = ""+App_Name+"---"+Hash.trim()+"---Testing---"+LastKnownUnit.toString()+"---";
			Local local = localDef(LastKnownUnit);
			Stmt stmt = (Stmt) LastKnownUnit;
			InvokeExpr invocation = stmt.getInvokeExpr();
			List<Value> args = invocation.getArgs();
			if(args != null){
				for (Value arg : args) {
					if(arg.toString().contains("$")){
						MSG +=  " " +arg.toString() + "=" + VM.current().addressOf(arg) + " ";
					}
				}
			} else {
				MSG +=" " +local.toString()+"="+ VM.current().addressOf(local)+ " ";
			}
			
                        InsertLogMessageAfterUnit(MSG, LastKnownUnit, units);
                        //IterateOverListAndInsertLogMessage(App_Name+"::"+Hash+"::", StringArrayOfStaticInvokeMethodsToLookForAdSpecific, LastKnownUnit, units, MethodName, true);
                    }

                    if(SootValueIsASpecialInvokeExpr)
                    {
                        SpecialInvokeExpression = (SpecialInvokeExpr) SootValue;
                        MethodName = SpecialInvokeExpression.getMethod().getName().toString();
			String MSG = ""+App_Name+"---"+Hash.trim()+"---Testing---"+LastKnownUnit.toString()+"---";
			Local local = localDef(LastKnownUnit);
			Stmt stmt = (Stmt) LastKnownUnit;
			InvokeExpr invocation = stmt.getInvokeExpr();
			List<Value> args = invocation.getArgs();
			if(args != null){
				for (Value arg : args) {
					if(arg.toString().contains("$")){
						MSG +=  " " +arg.toString() + "=" + VM.current().addressOf(arg) + " ";
					}
				}
			} else {
				MSG +=" " +local.toString()+"="+ VM.current().addressOf(local)+ " ";
			}
			
                        InsertLogMessageAfterUnit(MSG, LastKnownUnit, units);
//                        IterateOverListAndInsertLogMessage(App_Name+"::"+Hash+"::", StringArrayOfSpecialInvokeMethodsToLookForAdSpecific, LastKnownUnit, units, MethodName+":", true);
//                        IterateOverListAndInsertLogMessage(App_Name+"::"+Hash+"::", StringArrayOfSpecialInvokeMethodsToLookForAdSpecificMultipleTimesSearchFor, LastKnownUnit, units, MethodName+":", false);
//                        IterateOverListAndInsertLogMessage(App_Name+"::"+Hash+"::", StringArrayOfSpecialInvokeMethodsToLookForNotAdSpecific, LastKnownUnit, units, MethodName+":", false);
                    }
                }
            }
        }
    }
}
