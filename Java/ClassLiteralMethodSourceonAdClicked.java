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
  public String public_string_class_to_inject = null;
  public String public_variable_string_class_to_inject = null;
  public String this_string_method_to_inject = null;
  public SootClass this_soot_class = null;

	public static AssignStmt newAssignStmt(Value variable, Value rightvalue){
		return new JAssignStmt(variable, rightvalue);
	}
  public soot.Body getBody(soot.SootMethod sootMethod, String phaseName) {
    // create empty body
    SootUtil this_sootUtil = new SootUtil();
    JimpleBody this_class_body = Jimple.v().newBody(sootMethod);
    Chain this_methods_units = this_class_body.getUnits();
    Unit unit_to_inject = null;
    Local local_thisClass, local_stringBuilder, local_string, local_AdManagerAdView;
    IdentityStmt this_identity_stmt = null;
    SootClass this_class_stringbuilder = null;
    SootMethodRef this_method_ref = null;
    SpecialInvokeExpr special_invokeExpr_to_inject = null;
    VirtualInvokeExpr virtual_invokeExpr_to_inject = null;
    List<Value> this_method_arguments = null;
    Value sootvalue_field_ref = null;
    AssignStmt IdentityStmtNew = null;

    local_thisClass = this_sootUtil.NewLocal("r0", RefType.v(public_string_class_to_inject)); //ERRORS out if you use $20 instead of $2
    this_class_body.getLocals().add(local_thisClass);
    
    local_stringBuilder = this_sootUtil.NewLocal("$r1", RefType.v("java.lang.StringBuilder"));
    this_class_body.getLocals().add(local_stringBuilder);
    
    local_AdManagerAdView = this_sootUtil.NewLocal("$r2", RefType.v("com.google.android.gms.ads.admanager.AdManagerAdView"));
    this_class_body.getLocals().add(local_AdManagerAdView);

    local_string = this_sootUtil.NewLocal("$r3", RefType.v("java.lang.String"));
    this_class_body.getLocals().add(local_string);
    
    // Generate r0 := @this: com.google.android.gms.example.bannerexample.TestClassAdViewAdListener$1;
    this_identity_stmt = this_sootUtil.NewIdentityStmtParameterRefThis(public_string_class_to_inject, 0, local_thisClass);
    this_methods_units.add(this_identity_stmt);

    // Generate $r1 = new java.lang.StringBuilder;
    unit_to_inject = Jimple.v().newAssignStmt(local_stringBuilder, Jimple.v().newNewExpr(RefType.v("java.lang.StringBuilder")));
    this_methods_units.add(unit_to_inject);

    // Generate specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();
    this_class_stringbuilder = Scene.v().getSootClass("java.lang.StringBuilder");
    this_method_ref = this_class_stringbuilder.getMethod("void <init>()").makeRef();
    this_method_arguments = Collections.<Value>emptyList();
    special_invokeExpr_to_inject = Jimple.v().newSpecialInvokeExpr(local_stringBuilder,this_method_ref, this_method_arguments);
    unit_to_inject = Jimple.v().newInvokeStmt(special_invokeExpr_to_inject);
    this_methods_units.add(unit_to_inject);

    // Generate $r1 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("onAdClicked ");
    SootMethod thisMethod = this_class_stringbuilder.getMethod("java.lang.StringBuilder append(java.lang.String)");
    this_method_ref = Scene.v().makeMethodRef(this_class_stringbuilder, thisMethod.getName(), thisMethod.getParameterTypes(), thisMethod.getReturnType(), thisMethod.isStatic());
    virtual_invokeExpr_to_inject = Jimple.v().newVirtualInvokeExpr(local_stringBuilder,this_method_ref,StringConstant.v("onAdClicked "));
    unit_to_inject = Jimple.v().newAssignStmt(local_stringBuilder, virtual_invokeExpr_to_inject);
    this_methods_units.add(unit_to_inject);

	// Generate $r2 = r0.<com.google.android.gms.example.bannerexample.TestClassAdViewAdListener$1: com.google.android.gms.ads.admanager.AdManagerAdView val$adView>;
    sootvalue_field_ref = Jimple.v().newInstanceFieldRef(this_identity_stmt.getLeftOpBox().getValue(), this_soot_class.getFieldByName("val$adView").makeRef());
    IdentityStmtNew = newAssignStmt(local_AdManagerAdView, sootvalue_field_ref);
    this_methods_units.add(IdentityStmtNew);

  	// Generate  $r3 = virtualinvoke $r2.<com.google.android.gms.ads.admanager.AdManagerAdView: java.lang.String getAdUnitId()>();
    this_method_ref = Scene.v().getMethod("<com.google.android.gms.ads.BaseAdView: java.lang.String getAdUnitId()>").makeRef();
    virtual_invokeExpr_to_inject = Jimple.v().newVirtualInvokeExpr(local_AdManagerAdView, this_method_ref);  
    unit_to_inject = Jimple.v().newAssignStmt(local_string, virtual_invokeExpr_to_inject);
    this_methods_units.add(unit_to_inject);

  	// Generate $r1 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);
  	this_method_ref = Scene.v().getMethod("<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>").makeRef();
    virtual_invokeExpr_to_inject = Jimple.v().newVirtualInvokeExpr(local_stringBuilder, this_method_ref,local_string);  
    unit_to_inject = Jimple.v().newAssignStmt(local_stringBuilder, virtual_invokeExpr_to_inject);
    this_methods_units.add(unit_to_inject);
    
    // Generate $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();
    this_method_ref = Scene.v().getMethod("<java.lang.StringBuilder: java.lang.String toString()>").makeRef();
  	virtual_invokeExpr_to_inject = Jimple.v().newVirtualInvokeExpr(local_stringBuilder, this_method_ref);  
    unit_to_inject = Jimple.v().newAssignStmt(local_string, virtual_invokeExpr_to_inject);
    this_methods_units.add(unit_to_inject);
    // Generate staticinvoke <android.util.Log: int d(java.lang.String,java.lang.String)>("FiniteState", $r3);
    this_method_arguments = new ArrayList<Value>();
    this_method_arguments.add(StringConstant.v("FiniteState"));
    this_method_arguments.add(local_string);
    SootMethodRef method_ref_log = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef();
    StaticInvokeExpr LogInvokeStmt = Jimple.v().newStaticInvokeExpr(method_ref_log, this_method_arguments);
    InvokeStmt InvokeStatementLog = Jimple.v().newInvokeStmt(LogInvokeStmt);
    this_methods_units.add(InvokeStatementLog);
  	// Generate return;
    unit_to_inject = Jimple.v().newReturnVoidStmt();
    this_methods_units.add(unit_to_inject);
    
    return this_class_body;
  }
}

class ClassLiteralMethodSourceonInit implements soot.MethodSource {
  public String public_string_class_to_inject = null;
  public String this_string_method_to_inject = null;
  public SootClass this_soot_class = null;

	public static AssignStmt newAssignStmt(Value variable, Value rightvalue){
		return new JAssignStmt(variable, rightvalue);
	}

  public soot.Body getBody(soot.SootMethod sootMethod, String phaseName) {
	    // create empty body
    
	    SootClass publicVariableSootClass = sootMethod.getDeclaringClass();
	    String publicVariableAdManagerAdView = "com.google.android.gms.ads.admanager.AdManagerAdView";
	    String public_variable_string_class_to_inject = sootMethod.getDeclaringClass().getName();
	    SootUtil this_sootUtil = new SootUtil();
            JimpleBody newbody = Jimple.v().newBody(sootMethod);
            sootMethod.setActiveBody(newbody);
            Chain this_methods_units = newbody.getUnits();
            Local local_this_class, local_admanageradview, localthisclass;
            AssignStmt this_assign_stmt_to_inject = null;
            List<Value> this_method_arguments = null;
            SpecialInvokeExpr special_invokeExpr_to_inject = null;
            Unit unit_to_inject = null;
            localthisclass = this_sootUtil.NewLocal("$r1", RefType.v(public_variable_string_class_to_inject.replace("$1","")));
            newbody.getLocals().add(localthisclass);

            local_this_class = this_sootUtil.NewLocal("r0", RefType.v(public_variable_string_class_to_inject)); //ERRORS out if you use $20 instead of $2
            newbody.getLocals().add(local_this_class);
            
            local_admanageradview = this_sootUtil.NewLocal("$r2",RefType.v(publicVariableAdManagerAdView));
            newbody.getLocals().add(local_admanageradview);
            // Generate r0 := @this: com.google.android.gms.example.bannerexample.TestClassAdViewAdListener$1;
            IdentityStmt this_identity_stmt = this_sootUtil.NewIdentityStmtParameterRefThis(public_variable_string_class_to_inject, 0, local_this_class);
            this_methods_units.add(this_identity_stmt);

            // Generate $r1 := @parameter0: com.google.android.gms.example.bannerexample.TestClassAdViewAdListener;
            this_methods_units.add(this_sootUtil.NewIdentityStmtParameterRef(public_variable_string_class_to_inject.replace("$1",""), 0, localthisclass));

            // Generate  $r2 := @parameter1: com.google.android.gms.ads.admanager.AdManagerAdView;
            this_methods_units.add(this_sootUtil.NewIdentityStmtParameterRef(publicVariableAdManagerAdView, 1, local_admanageradview));
                        
            // Generate r0.<com.google.android.gms.example.bannerexample.TestClassAdViewAdListener$1: com.google.android.gms.example.bannerexample.TestClassAdViewAdListener this$0> = $r1;
            Value sootvalue_field_ref = Jimple.v().newInstanceFieldRef(this_identity_stmt.getLeftOpBox().getValue(), publicVariableSootClass.getFieldByName("this$0").makeRef());
            this_assign_stmt_to_inject = newAssignStmt(sootvalue_field_ref, localthisclass);
            this_methods_units.add(this_assign_stmt_to_inject);

            // Generate r0.<com.google.android.gms.example.bannerexample.TestClassAdViewAdListener$1: com.google.android.gms.ads.admanager.AdManagerAdView val$adView> = $r2;
            this_assign_stmt_to_inject = newAssignStmt(Jimple.v().newInstanceFieldRef(this_identity_stmt.getLeftOpBox().getValue(), this_soot_class.getFieldByName("val$adView").makeRef()), local_admanageradview);
            this_methods_units.add(this_assign_stmt_to_inject);

            // Generate specialinvoke r0.<com.google.android.gms.ads.AdListener: void <init>()>();
            SootMethodRef this_method_reference = publicVariableSootClass.getSuperclass().getMethod("void <init>()").makeRef();
            this_method_arguments = Collections.<Value>emptyList();
            special_invokeExpr_to_inject = Jimple.v().newSpecialInvokeExpr(local_this_class,this_method_reference, this_method_arguments);
            unit_to_inject = Jimple.v().newInvokeStmt(special_invokeExpr_to_inject);
            this_methods_units.add(unit_to_inject);

            special_invokeExpr_to_inject = Jimple.v().newSpecialInvokeExpr(local_this_class,this_method_reference, StringConstant.v("onAdClicked "));
            unit_to_inject = Jimple.v().newInvokeStmt(special_invokeExpr_to_inject);
            this_methods_units.add(unit_to_inject);
            // Generate return;

            unit_to_inject = Jimple.v().newReturnVoidStmt();
            this_methods_units.add(unit_to_inject);
            return newbody;
  }
}

class ClassLiteralMethodSourceonInitFirst implements soot.MethodSource {
  public String public_string_class_to_inject = null;
  public String this_string_method_to_inject = null;
  public SootClass this_soot_class = null;

  public static AssignStmt newAssignStmt(Value variable, Value rightvalue){
    return new JAssignStmt(variable, rightvalue);
  }

  public soot.Body getBody(soot.SootMethod sootMethod, String phaseName) {
      // create empty body
    
      SootClass publicVariableSootClass = sootMethod.getDeclaringClass();
      String publicVariableAdManagerAdView = "com.google.android.gms.ads.admanager.AdManagerAdView";
      String public_variable_string_class_to_inject = sootMethod.getDeclaringClass().getName();
      SootUtil this_sootUtil = new SootUtil();
            JimpleBody newbody = Jimple.v().newBody(sootMethod);
            sootMethod.setActiveBody(newbody);
            Chain this_methods_units = newbody.getUnits();
            Local local_this_class, local_admanageradview, localthisclass;
            AssignStmt this_assign_stmt_to_inject = null;
            List<Value> this_method_arguments = null;
            SpecialInvokeExpr special_invokeExpr_to_inject = null;
            Unit unit_to_inject = null;
            localthisclass = this_sootUtil.NewLocal("r0", RefType.v(public_variable_string_class_to_inject.replace("$1","")));
            newbody.getLocals().add(localthisclass);

            // Generate r0 := @this: com.google.android.gms.example.bannerexample.TestClassAdViewAdListener;
            IdentityStmt this_identity_stmt = this_sootUtil.NewIdentityStmtParameterRefThis(public_variable_string_class_to_inject, 0, localthisclass);
            this_methods_units.add(this_identity_stmt);
            
            // Generate specialinvoke r0.<java.lang.Object: void <init>()>();
            
            // Generate return;
            unit_to_inject = Jimple.v().newReturnVoidStmt();
            this_methods_units.add(unit_to_inject);

            return newbody;
  }
}