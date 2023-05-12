import java.util.*;
import java.io.*;
import java.lang.*;

import soot.*;
import soot.jimple.*;
import soot.util.*;
import soot.jimple.internal.*;
import soot.jimple.*;
import soot.jimple.internal.JAssignStmt.*;

public class SootTest2
{
    public static void main(String[] sootarguments)
    {
        SootInstrumentationHelper thisHelper = new SootInstrumentationHelper();
        Once thisOnce = new Once();
        PackManager.v().getPack("jtp").add(new Transform("jtp.myInstrumenter", new BodyTransformer()
        {
            @Override
            protected void internalTransform(final Body body, String phaseName, @SuppressWarnings("rawtypes") Map options)
            {               
                thisOnce.run(() -> thisHelper.Inject_New_Class_And_Methods_AdListener());
                SootClass this_class = body.getMethod().getDeclaringClass();
                SootMethod this_method = body.getMethod();
                
                
                String this_class_name = this_class.getName();
                // Chain<SootField> class_soot_fields = this_class.getFields();
                String this_method_name = this_method.getName();
                UnitPatchingChain thisunits = body.getUnits();
                SootClass this_class_superclass = thisHelper.Method_Has_SuperClass_Adview(this_class);
                // if(!this_method_name.contains("<init>") && !this_method_name.contains("<clinit>")){
                //     if(this_class_superclass != null){
                //         thisHelper.Print("SootClass:"+this_class_name + " Method:"+this_method_name + " Superclass");
                //         thisHelper.Inject_Log_SuperClass(this_class_name, this_method_name, this_class_superclass.getName(), thisunits); 
                //     }else{
                //         List<Type> method_types = this_method.getParameterTypes();
                //         Type this_method_type = thisHelper.Method_Has_Parameter_Adview(method_types);
                //         Chain<SootField> class_soot_fields = this_class.getFields();
                //         SootField this_class_has_fieldref_adview = thisHelper.FieldRef_Has_Adview(class_soot_fields);

                //         if(this_method_type != null){
                //             thisHelper.Print("SootClass:"+this_class_name + " Method:"+this_method_name + " HAS PARAMETER TYPE");
                //             thisHelper.Inject_Log_Parameters(this_class_name, this_method_name, this_method_type.toString(), thisunits);

                //         }else if(this_class_has_fieldref_adview != null){
                //             thisHelper.Print("SootClass:"+this_class_name + " Method:"+this_method_name + " HAS Field Ref");
                //             thisHelper.Inject_Log_FieldRef(this_class_name, this_method_name, this_class_has_fieldref_adview.getName(),thisunits);
                //         }else{
                //             // Inject_Log_Not_Supported(this_class_name, this_method_name, thisunits);
                //             // Print("SootClass:"+this_class_name + " Method:"+this_method_name + " Not Supported!!!");  
                //         }
                //     }
                // }
            }   
        }));
        soot.Main.main(sootarguments);
    }
}