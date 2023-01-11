import soot.SootClass;
import soot.SootMethod;
import soot.Unit;
import soot.UnitPatchingChain;
import soot.Value;
import soot.ValueBox;
import soot.jimple.SpecialInvokeExpr;
import soot.jimple.VirtualInvokeExpr;
import soot.jimple.StaticInvokeExpr;
import java.util.Iterator;
import java.util.*;
import Logging.Logging;
import Conditions.SootConditionChecker;

public class Soot {
	public static List<SootMethod> entryPoints = null;
	public static SootMethod meth = null;
	public static String AndroidAppName = null;
	public static boolean Google = false;
	public static boolean RunOnce;
	public static String MainActivity = null;
	List<String> ClassNameLogArray = new ArrayList<String>();

	public Soot(String AndroidApplicationName) {
		AndroidAppName = AndroidApplicationName;
		Google = true;
		RunOnce = false;

	}

    private void CheckIfMethodExists(String[] MethodsArray, Unit LastKnownUnit, String StringLastKnownUnit, SootMethod sootmethod, Value SootValue, boolean DeclaringClassHasAdLibrary, Logging logging){
        for (String StringMethod : MethodsArray){
	        if (SootValue.toString().toLowerCase().contains(StringMethod) && DeclaringClassHasAdLibrary) {
		        logging.InjectLogAfterUnit(LastKnownUnit, StringMethod + ":" + StringLastKnownUnit, sootmethod);
		    }
        }
    }
    
	public void RunSoot() {
		EntryPointsManager entrypointsmanager = new EntryPointsManager("APK/" + AndroidAppName);
		entrypointsmanager.loadApkEntryPoints();
		entryPoints = entrypointsmanager.getApkEntryPoints();

		UnitPatchingChain units = null;
		Logging logging = new Logging(AndroidAppName);
		SootConditionChecker sootconditionchecker = new SootConditionChecker();
		String entryPoint = null;

        String[] StringArrayOfSpecialInvokeMethodsToLookForNotAdSpecific = {"oncreate"};

        String[] StringArrayOfVirtualInvokeMethodsToLookForNotAdSpecific = {"setfullscreencontent"};
        String[] StringArrayOfSpecialInvokeMethodsToLookForAdSpecific = {"onadclicked", "setcontentview", "onadimpression", "setfullscreencontent"};
        String[] StringArrayOfVirtualInvokeMethodsToLookForAdSpecific = {"loadad", "showad", "impression", "performclick", "setlistener", "setfullscreencontent"};
        String[] StringArrayOfStaticInvokeMethodsToLookForAdSpecific = {"initialize"};

		for (int index = 0; index < entryPoints.size(); index++) {
			SootMethod sootmethodtocheck = entryPoints.get(index);
			entryPoint = String.valueOf(sootmethodtocheck);
			Boolean entryPointHasActiveBody = sootmethodtocheck.hasActiveBody();
			SootClass Class = sootmethodtocheck.getDeclaringClass();
            System.out.println("Declaring Class: " + Class.toString());
			boolean GoogleLibraryExists = sootconditionchecker.CheckIfClassExists(Class, "google");
			if (GoogleLibraryExists && Google) {
				Logging.LogTheLibrary("google");
				Google = false;
			}

			if (!entryPointHasActiveBody) {
                System.out.println("No Body: " + Class.toString());
            }
			if (entryPointHasActiveBody) {
				SootMethod sootmethod = entryPoints.get(index);
				if (sootmethod.hasActiveBody()) {
					units = sootmethod.retrieveActiveBody().getUnits();
                    //System.out.println("Units: "+units.toString());
				}
				for (Iterator<Unit> unit = units.snapshotIterator(); unit.hasNext();) {
					Unit LastKnownUnit = unit.next();
					String StringLastKnownUnit = LastKnownUnit.toString();
                    //System.out.println("Unit: "+StringLastKnownUnit);
                    //System.out.println("Unit Boxes: "+LastKnownUnit.getUseBoxes().toString());
                    
                    
					boolean LastKnownUnitIsAStmt = sootconditionchecker.LastKnownUnitIsAStatement(LastKnownUnit);
					if (LastKnownUnitIsAStmt) {
						for (ValueBox SootValuebox : LastKnownUnit.getUseBoxes()) {
							Value SootValue = SootValuebox.getValue();
							VirtualInvokeExpr VirtualInvokeExpression = null;
							SpecialInvokeExpr SpecialInvokeExpression = null;
							StaticInvokeExpr StaticInvokeExpression = null;
							String MethodName = null;
							boolean DeclaringClassHasAdLibrary = false;
							String StringDeclaringClass = null;
							boolean SootValueIsAVirtualInvokeExpr = sootconditionchecker.ValueIsAVirtualInvokeExpr(SootValue);
							boolean SootValueIsASpecialInvokeExpr = sootconditionchecker.ValueIsASpecialInvokeExpr(SootValue);
							boolean SootValueIsAStaticInvokeExpr = sootconditionchecker.ValueIsAStaticInvokeExpr(SootValue);

							if (RunOnce == false) {
								RunOnce = true;
							}
							if (SootValueIsAVirtualInvokeExpr) {
								VirtualInvokeExpression = (VirtualInvokeExpr) SootValue;
								MethodName = VirtualInvokeExpression.getMethod().getName().toLowerCase().toString();
								StringDeclaringClass = VirtualInvokeExpression.getMethodRef().getDeclaringClass().toString();
								DeclaringClassHasAdLibrary = sootconditionchecker.CheckIfDeclaringClassHasAdLibrary(StringDeclaringClass);

                                CheckIfMethodExists(StringArrayOfVirtualInvokeMethodsToLookForAdSpecific, LastKnownUnit, StringLastKnownUnit, sootmethod, SootValue, DeclaringClassHasAdLibrary, logging);
                                CheckIfMethodExists(StringArrayOfVirtualInvokeMethodsToLookForNotAdSpecific , LastKnownUnit, StringLastKnownUnit, sootmethod, SootValue, true, logging);
							}

							if (SootValueIsASpecialInvokeExpr) {
								SpecialInvokeExpression = (SpecialInvokeExpr) SootValue;
								MethodName = SpecialInvokeExpression.getMethod().getName().toLowerCase().toString();
								StringDeclaringClass = SpecialInvokeExpression.getMethodRef().getDeclaringClass().toString();
								DeclaringClassHasAdLibrary = sootconditionchecker.CheckIfDeclaringClassHasAdLibrary(StringDeclaringClass);

                                CheckIfMethodExists(StringArrayOfSpecialInvokeMethodsToLookForAdSpecific, LastKnownUnit, StringLastKnownUnit, sootmethod, SootValue, DeclaringClassHasAdLibrary, logging);
                                CheckIfMethodExists(StringArrayOfSpecialInvokeMethodsToLookForNotAdSpecific, LastKnownUnit, StringLastKnownUnit, sootmethod, SootValue, true, logging);

							}

							if (SootValueIsAStaticInvokeExpr) {
								StaticInvokeExpression = (StaticInvokeExpr) SootValue;
								MethodName = StaticInvokeExpression.getMethod().getName().toLowerCase().toString();
								StringDeclaringClass = StaticInvokeExpression.getMethodRef().getDeclaringClass().toString();
								DeclaringClassHasAdLibrary = sootconditionchecker.CheckIfDeclaringClassHasAdLibrary(StringDeclaringClass);


                                CheckIfMethodExists(StringArrayOfStaticInvokeMethodsToLookForAdSpecific, LastKnownUnit, StringLastKnownUnit, sootmethod, SootValue, DeclaringClassHasAdLibrary, logging);
							}
						}
					}
				}
			} else { GoogleLibraryExists = false; }
		}
	}
};
