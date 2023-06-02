import soot.*;
// import soot.BodyTransformer;
// import soot.Unit;
import soot.jimple.*;
import soot.util.*;
import java.io.*;
import java.util.*;
public class MyTransform extends BodyTransformer {
    @Override
    protected void internalTransform(Body body, String phaseName, Map<String, String> options) {
        // // Retrieve the method's unit chain
        // Chain<Unit> units = body.getUnits();
        
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
