import soot.*;
import soot.jimple.*;
import soot.util.*;
import soot.javaToJimple.*;
import soot.options.Options;
public class SootUtil
{
	 public static Local NewLocal(String strlocal, Type valueref)
    {
        return Jimple.v().newLocal(strlocal, valueref);
    }

	public static SootField AddFinalFieldToSootClass(SootClass sClass, String strVar, String strClassToInjectAdListenerClass)
    {
        SootField field = Scene.v().makeSootField(strVar, RefType.v(strClassToInjectAdListenerClass), Modifier.FINAL);
        sClass.addField(field);
        return field;
    }
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
}