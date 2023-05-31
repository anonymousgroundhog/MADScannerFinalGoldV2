import java.util.*;
import java.io.*;
import java.lang.*;

import soot.*;
import soot.jimple.*;
import soot.util.*;
import soot.jimple.internal.*;
import soot.jimple.*;
import soot.jimple.internal.JAssignStmt.*;

public class SootInstrumentationHelper
{
    public static Local Generate_Local(Body this_body, LocalGenerator this_local_generator, String string_this_local){
        Boolean contains_local = false;
        Local local_to_return = null;
        for (Local local : this_body.getLocals()) {
            if (local.getType().toString().equals(string_this_local)) {
                contains_local = true;
                local_to_return = local;
            }
        }
        if(!contains_local){
            local_to_return = this_local_generator.generateLocal(RefType.v(string_this_local));
        }

        return local_to_return;
    }
    public static String publicVariableStringClassToInject = "com.google.android.gms.example.bannerexample.TestClassAdViewAdListenerTesting";
    public static String Read_Nth_Line(String filePath, int lineNumber){
        String line = null;
        BufferedReader reader = null;
        
        try {
            reader = new BufferedReader(new FileReader(filePath));
            for (int i = 1; i <= lineNumber; i++) {
                line = reader.readLine();
                if (line == null) {
                    break;  // Line number exceeds file length
                }
            }
        } catch (IOException e) {
            // Handle any potential IO exceptions
            e.printStackTrace();
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return line;
    }
    public static void Print(String stringvalue){
        System.out.println(stringvalue);
    }
    public static SootField FieldRef_Has_Adview(Chain<SootField> class_soot_fields){
        for (SootField field: class_soot_fields){
            if(! field.getType().toString().contains("OnAdManagerAdViewLoadedListener") && ! field.getType().toString().contains("AdManagerAdViewOptions") && field.getType().toString().contains("AdManagerAdView") || field.getType().toString().contains("BaseAdView") || field.getType().toString().contains("AdView")){
                return field;
            }
        }
        return null;
    }
    public static Type Method_Has_Parameter_Adview(List<Type> method_soot_types){
        for (Type type: method_soot_types){
            if(! type.toString().contains("OnAdManagerAdViewLoadedListener") &&  ! type.toString().contains("AdManagerAdViewOptions") && type.toString().contains("AdManagerAdView") || type.toString().contains("BaseAdView") || type.toString().contains("AdView")){
                return type;
            }
        }
        return null;
    }
    public static SootClass Method_Has_SuperClass_Adview(SootClass this_class){
        if(this_class.hasSuperclass()){
            String super_class_name = this_class.getSuperclass().getName();
            if(super_class_name.contains("adView") || super_class_name.contains("BaseAdView") || super_class_name.contains("AdManagerAdView")){
                return this_class.getSuperclass();
            }
        }
        return null;
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
    public static Boolean ContainsAdViewUnit(UnitPatchingChain thisunits){
        String public_variable_admanageradview = "com.google.android.gms.ads.admanager.AdManagerAdView";
        Unit this_unit = null;
        for (Iterator<Unit> unit = thisunits.snapshotIterator(); unit.hasNext();) {
            this_unit = unit.next();
            if (this_unit instanceof AssignStmt){
                    AssignStmt this_invokeStmt = (AssignStmt) this_unit;
                    Value left_side = this_invokeStmt.getLeftOpBox().getValue();
                    Value right_side = this_invokeStmt.getRightOpBox().getValue();
                    
                    // this_Helper.Print("\nStmt:"+this_invokeStmt.toString()+ " (Left:" + left_side.toString()+" Right:"+right_side.getType()+")");
                    if(left_side.getType().toString().equals(public_variable_admanageradview) && left_side.getType().toString().equals(public_variable_admanageradview)){
                        Print(this_unit.toString());
                        return true;
                    }
                }
        }
        return false;
    }
}