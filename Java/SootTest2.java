import java.util.Iterator;
import java.util.*;
import java.io.*;
import java.lang.*;
import java.util.concurrent.TimeUnit;
import java.util.Collections;

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

public class SootTest2
{
    
    public static void Print(String stringvalue){
        System.out.println(stringvalue);
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
    public static void Inject_Log_Generic(String this_class_name, String this_method_name, UnitPatchingChain thisunits){
        SootMethodRef method_ref_log = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef();
        // UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
        String MSG = this_class_name+"---"+this_method_name+"---null";
        List<Value> listArgs = new ArrayList<Value>();
        listArgs.add(StringConstant.v("FiniteState"));
        listArgs.add(StringConstant.v(MSG));
        StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(method_ref_log, listArgs);
        InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
        Unit unit_to_insert_after = ReturnUnitToInjectAfter(thisunits);

        if(unit_to_insert_after != null){
            Print("Injected log");
            thisunits.insertAfter(InvokeStatementLog, unit_to_insert_after);
        } 
    }
    public static void main(String[] sootarguments)
    {
        PackManager.v().getPack("jtp").add(new Transform("jtp.myInstrumenter", new BodyTransformer()
        {
            @Override
            protected void internalTransform(final Body body, String phaseName, @SuppressWarnings("rawtypes") Map options)
            {               
                
                SootClass this_class = body.getMethod().getDeclaringClass();
                SootMethod this_method = body.getMethod();
                List<Type> method_types = this_method.getParameterTypes();
                String this_class_name = this_class.getName();
                Chain<SootField> class_soot_fields = this_class.getFields();
                String this_method_name = this_method.getName();
                UnitPatchingChain thisunits = body.getUnits();
                Print("SootClass:"+this_class_name);
                Print("Method:"+this_method_name);
                Inject_Log_Generic(this_class_name, this_method_name, thisunits);
                // SootMethodRef method_ref_log = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef();
                // // UnitPatchingChain thisunits = this_method.retrieveActiveBody().getUnits();
                // String MSG = this_class_name+"---"+this_method_name+"---null";
                // List<Value> listArgs = new ArrayList<Value>();
                // listArgs.add(StringConstant.v("FiniteState"));
                // listArgs.add(StringConstant.v(MSG));
                // StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(method_ref_log, listArgs);
                // InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
                // Unit unit_to_insert_after = ReturnUnitToInjectAfter(thisunits);

                // if(unit_to_insert_after != null){
                //     Print("Injected log");
                //     thisunits.insertAfter(InvokeStatementLog, unit_to_insert_after);
                // }
            }   
        }));
        soot.Main.main(sootarguments);
    }
}