import soot.*;
import soot.Value;
import soot.jimple.*;
import soot.util.*;
import soot.options.Options;
import soot.jimple.internal.*;
// import soot.jimple.Jimple;
// import soot.jimple.JimpleMethodSource;
import soot.ValueBox;
import soot.jimple.internal.JAssignStmt.LinkedVariableBox;
import soot.jimple.internal.JAssignStmt.LinkedRValueBox;
import org.jf.dexlib2.immutable.reference.ImmutableFieldReference;
import org.jf.dexlib2.iface.reference.FieldReference;
import java.util.*;
import java.io.*;


public class ClassLiteralMethodSourceonAdClicked implements soot.MethodSource {
  public String strClassToInject = null;
  public String publicVariableStringClassToInject = null;
  public String strMethodToInject = null;
  public SootClass sootclass = null;

	public static AssignStmt newAssignStmt(Value variable, Value rightvalue){
		return new JAssignStmt(variable, rightvalue);
	}
  public soot.Body getBody(soot.SootMethod sootMethod, String phaseName) {
    // create empty body
    SootUtil sootUtil = new SootUtil();
    JimpleBody classBody = Jimple.v().newBody(sootMethod);
    Chain units = classBody.getUnits();
    Local local_thisClass, local_stringBuilder, local_string, local_AdManagerAdView;

    local_thisClass = sootUtil.NewLocal("r0", RefType.v(strClassToInject)); //ERRORS out if you use $20 instead of $2
    classBody.getLocals().add(local_thisClass);
    
    local_stringBuilder = sootUtil.NewLocal("$r1", RefType.v("java.lang.StringBuilder"));
    classBody.getLocals().add(local_stringBuilder);
    
    local_AdManagerAdView = sootUtil.NewLocal("$r2", RefType.v("com.google.android.gms.ads.admanager.AdManagerAdView"));
    classBody.getLocals().add(local_AdManagerAdView);

    local_string = sootUtil.NewLocal("$r3", RefType.v("java.lang.String"));
    classBody.getLocals().add(local_string);
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
    Unit unit_thisVirtualInvoke = Jimple.v().newAssignStmt(local_stringBuilder, thisVirtualInvoke);
    units.add(unit_thisVirtualInvoke);

	// Generate $r2 = r0.<com.google.android.gms.example.bannerexample.TestClassAdViewAdListener$1: com.google.android.gms.ads.admanager.AdManagerAdView val$adView>;
    Value sootfieldref = Jimple.v().newInstanceFieldRef(thisStmt.getLeftOpBox().getValue(), sootclass.getFieldByName("val$adView").makeRef());
    //AssignStmt IdentityStmtNew = newAssignStmt(sootfieldref, local_thisClass);
    AssignStmt IdentityStmtNew = newAssignStmt(local_AdManagerAdView, sootfieldref);
    units.add(IdentityStmtNew);

  	// Generate  $r3 = virtualinvoke $r2.<com.google.android.gms.ads.admanager.AdManagerAdView: java.lang.String getAdUnitId()>();
    VirtualInvokeExpr LogInvokeExpr = Jimple.v().newVirtualInvokeExpr(local_AdManagerAdView, Scene.v().getMethod("<com.google.android.gms.ads.BaseAdView: java.lang.String getAdUnitId()>").makeRef());  
    
    // SootClass classAdManagerAdView = Scene.v().getSootClass("com.google.android.gms.ads.admanager.AdManagerAdView");
    // thisMethod = classAdManagerAdView.getMethod("java.lang.String getAdUnitId()");
    // thisMethod = Scene.v().getMethod("<com.google.android.gms.ads.admanager.AdManagerAdView: java.lang.String getAdUnitId()>"); 
    // thisRef = Scene.v().makeMethodRef(thisMethod.getDeclaringClass(), thisMethod.getName(), thisMethod.getParameterTypes(), thisMethod.getReturnType(), thisMethod.isStatic());
    // thisRef = Scene.v().makeMethodRef(classAdManagerAdView, thisMethod.getName(), thisMethod.getParameterTypes(), thisMethod.getReturnType(), thisMethod.isStatic());
    // thisVirtualInvoke = Jimple.v().newVirtualInvokeExpr(local_string,thisRef);
    // System.out.println(thisVirtualInvoke);
  	// Generate $r1 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);
  	// Generate $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();
  	// Generate staticinvoke <android.util.Log: int d(java.lang.String,java.lang.String)>("FiniteState", $r3);
  	// Generate return;
    return classBody;
  }
}


class ClassLiteralMethodSourceonInit implements soot.MethodSource {
  public String strClassToInject = null;
  public String strMethodToInject = null;
  public SootClass sootclass = null;

	public static AssignStmt newAssignStmt(Value variable, Value rightvalue){
		return new JAssignStmt(variable, rightvalue);
	}

  public soot.Body getBody(soot.SootMethod sootMethod, String phaseName) {
	    // create empty body
    
	    SootClass publicVariableSootClass = sootMethod.getDeclaringClass();
	    String publicVariableAdManagerAdView = "com.google.android.gms.ads.admanager.AdManagerAdView";
	    String publicVariableStringClassToInject = sootMethod.getDeclaringClass().getName();
	    SootUtil sootUtil = new SootUtil();
            JimpleBody newbody = Jimple.v().newBody(sootMethod);
            sootMethod.setActiveBody(newbody);
            Chain sootunits = newbody.getUnits();
            Local argument1, argument2, localthisclass;
            System.out.println(publicVariableStringClassToInject.replace("$1",""));
            localthisclass = sootUtil.NewLocal("$r1", RefType.v(publicVariableStringClassToInject.replace("$1","")));
            newbody.getLocals().add(localthisclass);

            argument1 = sootUtil.NewLocal("r0", RefType.v(publicVariableStringClassToInject)); //ERRORS out if you use $20 instead of $2
            newbody.getLocals().add(argument1);
            // argument2 = sootUtil.NewLocal("$r1", RefType.v("com.google.android.gms.example.bannerexample.MyActivity"));
            // newbody.getLocals().add(argument2);
            
            argument2 = sootUtil.NewLocal("$r2",RefType.v(publicVariableAdManagerAdView));
            newbody.getLocals().add(argument2);
            // r0 := @this: com.google.android.gms.example.bannerexample.TestClassAdViewAdListener$1;
            IdentityStmt thisStmt = sootUtil.NewIdentityStmtParameterRefThis(publicVariableStringClassToInject, 0, argument1);
            sootunits.add(thisStmt);

            // Generate $r1 := @parameter0: com.google.android.gms.example.bannerexample.TestClassAdViewAdListener;
            sootunits.add(sootUtil.NewIdentityStmtParameterRef(publicVariableStringClassToInject.replace("$1",""), 0, localthisclass));

            // Generate  $r2 := @parameter1: com.google.android.gms.ads.admanager.AdManagerAdView;
            sootunits.add(sootUtil.NewIdentityStmtParameterRef(publicVariableAdManagerAdView, 1, argument2));
                        
            // Generate r0.<com.google.android.gms.example.bannerexample.TestClassAdViewAdListener$1: com.google.android.gms.example.bannerexample.TestClassAdViewAdListener this$0> = $r1;
            Value sootfieldref = Jimple.v().newInstanceFieldRef(thisStmt.getLeftOpBox().getValue(), publicVariableSootClass.getFieldByName("this$0").makeRef());
            AssignStmt IdentityStmtNew = newAssignStmt(sootfieldref, localthisclass);
            sootunits.add(IdentityStmtNew);

            // Generate specialinvoke r0.<com.google.android.gms.ads.AdListener: void <init>()>();
            SootMethodRef sootmethodofinterest = publicVariableSootClass.getSuperclass().getMethod("void <init>()").makeRef();
            List<Value> emptylist = Collections.<Value>emptyList();
            SpecialInvokeExpr specialInvokeExprAdListener = Jimple.v().newSpecialInvokeExpr(argument1,sootmethodofinterest, emptylist);
            Unit unitToAdd = Jimple.v().newInvokeStmt(specialInvokeExprAdListener);
            sootunits.add(unitToAdd);

            specialInvokeExprAdListener = Jimple.v().newSpecialInvokeExpr(argument1,sootmethodofinterest, StringConstant.v("onAdClicked "));
            unitToAdd = Jimple.v().newInvokeStmt(specialInvokeExprAdListener);
            sootunits.add(unitToAdd);
            // Generate return;

            unitToAdd = Jimple.v().newReturnVoidStmt();
            sootunits.add(unitToAdd);
            return newbody;
  }
}
