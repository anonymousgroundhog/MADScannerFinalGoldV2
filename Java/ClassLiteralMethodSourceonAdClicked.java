
// import java.util.ArrayList;
import java.io.*;
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
  public String strClassToInject = null;
  public String publicVariableStringClassToInject = null;
  public String strMethodToInject = null;
  public SootClass sootclass = null;

  public soot.Body getBody(soot.SootMethod sootMethod, String phaseName) {
    // create empty body
    SootUtil sootUtil = new SootUtil();
    JimpleBody classBody = Jimple.v().newBody(sootMethod);
    Chain units = classBody.getUnits();
    Local local_thisClass, local_stringBuilder;

    local_thisClass = sootUtil.NewLocal("r0", RefType.v(strClassToInject)); //ERRORS out if you use $20 instead of $2
    classBody.getLocals().add(local_thisClass);
    
    local_stringBuilder = sootUtil.NewLocal("$r1", RefType.v("java.lang.StringBuilder"));
    classBody.getLocals().add(local_stringBuilder);
    
    // Generate r0 := @this: com.google.android.gms.example.bannerexample.TestClassAdViewAdListener$1;
    IdentityStmt thisStmt = sootUtil.NewIdentityStmtParameterRefThis(strClassToInject, 0, local_thisClass);
    units.add(thisStmt);

    // Generate $r1 = new java.lang.StringBuilder;
    Unit u1 = Jimple.v().newAssignStmt(local_stringBuilder, Jimple.v().newNewExpr(RefType.v("java.lang.StringBuilder")));
    units.add(u1);

    // Generate specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();
    SootClass classStringBuilder = Scene.v().getSootClass("java.lang.StringBuilder");
    SootMethodRef sootmethodofinterest = classStringBuilder.getMethod("void <init>()").makeRef();
    List<Value> emptylist = Collections.<Value>emptyList();
    SpecialInvokeExpr specialInvokeExprAdListener = Jimple.v().newSpecialInvokeExpr(local_stringBuilder,sootmethodofinterest, emptylist);
    Unit unitToAdd = Jimple.v().newInvokeStmt(specialInvokeExprAdListener);
    units.add(unitToAdd);

    // Generate $r1 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("onAdClicked ");
    SootMethod thisMethod = classStringBuilder.getMethod("java.lang.StringBuilder append(java.lang.String)");
    SootMethodRef thisRef = Scene.v().makeMethodRef(classStringBuilder, thisMethod.getName(), thisMethod.getParameterTypes(), thisMethod.getReturnType(), thisMethod.isStatic());
    VirtualInvokeExpr thisVirtualInvoke = Jimple.v().newVirtualInvokeExpr(local_stringBuilder,thisRef,StringConstant.v("onAdClicked "));
    System.out.println(thisVirtualInvoke);
    Unit unit_thisVirtualInvoke = Jimple.v().newAssignStmt(local_stringBuilder, thisVirtualInvoke);
    units.add(unit_thisVirtualInvoke);

    // Generate $r2 = r0.<com.google.android.gms.example.bannerexample.TestClassAdViewAdListener$1: com.google.android.gms.ads.admanager.AdManagerAdView val$adView>;
    return classBody;
  }
}