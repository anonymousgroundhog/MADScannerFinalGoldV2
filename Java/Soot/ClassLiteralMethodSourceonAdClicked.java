package Soot;

import java.util.ArrayList;
import java.util.*;

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
// import Soot.SootUtil;

public class ClassLiteralMethodSourceonAdClicked implements soot.MethodSource {
    public String publicVariableStringClassToInject = null;
    public SootClass sootclass = null;
    public String strMethodToInject = null;
    
    public soot.Body getBody(soot.SootMethod sootMethod, String phaseName) {

        String strMethodName = strMethodToInject.replace("void ","").replace("()","");
        // strMethodName = strMethodToInject.replace("()","");
        // create empty body
        SootUtil sootUtil = new SootUtil();
        
        JimpleBody classBody = Jimple.v().newBody(sootMethod);
        UnitPatchingChain units = classBody.getUnits();
        Local arg1, arg2, tmpRef;

        arg1 = sootUtil.NewLocal("r0", RefType.v(publicVariableStringClassToInject)); //ERRORS out if you use $20 instead of $2
        classBody.getLocals().add(arg1);

        // Generate r0 := @this: com.google.android.gms.example.bannerexample.MyActivity$2;
        IdentityStmt thisStmt = sootUtil.NewIdentityStmtParameterRefThis(publicVariableStringClassToInject, 0, arg1);
        units.add(thisStmt);

        // specialinvoke r0.<com.google.android.gms.ads.AdListener: void onAdClicked()>();
        Value valueofinterest = thisStmt.getLeftOpBox().getValue();
        SootMethodRef sootmethodofinterest = sootclass.getSuperclass().getMethod(strMethodToInject).makeRef();
        List<Value> emptyList = Collections.<Value>emptyList();
        SpecialInvokeExpr specialInvokeExprAdListener = Jimple.v().newSpecialInvokeExpr(arg1,sootmethodofinterest, emptyList);
        Unit unitToAdd = Jimple.v().newInvokeStmt(specialInvokeExprAdListener);
        units.add(unitToAdd);

        //Generate staticinvoke <android.util.Log: int d(java.lang.String,java.lang.String)>("FiniteState", "ADRELATED:onAdClicked:specialinvoke r0.<com.google.android.gms.ads.AdListener: void onAdClicked()>()");
        sootUtil.InsertLogMessageAfterUnit("ADRELATED:"+strMethodName+":specialinvoke r0.<com.google.android.gms.ads.AdListener: "+strMethodToInject+">()",unitToAdd,units);
        
        // return
        units.add(Jimple.v().newReturnVoidStmt());

        return classBody;

    }
}