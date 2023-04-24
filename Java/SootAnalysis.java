// import org.apache.commons.codec.digest.DigestUtils;

// import Soot.SootUtil;
// import Soot.SootInstrumenter;
import java.util.*;

import soot.options.Options;
import soot.*;
import soot.jimple.toolkits.callgraph.*;
public class SootAnalysis
{
    public static void Print(String stringvalue)
    {
        System.out.println(stringvalue);
    }
    public static void main(String[] sootarguments)
    {
        // SootInstrumenter thisSootInstrumenter = new SootInstrumenter();
        // thisSootInstrumenter.RunInstrumentationOnAPK(sootarguments);
        // Options.v().set_output_format(Options.output_format_dex);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_output_dir(sootarguments[1]);
        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_process_dir(Arrays.asList(sootarguments[0]));
        Options.v().set_android_jars("../../Android/platforms");
        Options.v().set_whole_program(true);
        Options.v().set_process_multiple_dex(true);
        Options.v().set_allow_phantom_refs(true);
        Scene thisScene = Scene.v();
        thisScene.loadNecessaryClasses();
        // PackManager.v().writeOutput();
        // START INSTRUMENTING HERE
        Collection<SootClass> allClasses = thisScene.getClasses();
        String advertising_specific_class = "com.google.android.gms.ads";
        String super_class_of_interest = "com.google.android.gms.ads.BaseAdView";
        String super_class_of_interest2 = "com.google.android.gms.ads.adView";
        Map<String, List<String>> dictionary_of_classes = new HashMap<>();

        for (SootClass this_class : allClasses) {
            String class_name = this_class.getName();
            List<String> list_of_methods = new ArrayList<>();
            for (SootMethod meth: this_class.getMethods()){
                String method_name = meth.getName(); 
                if(method_name.contains("onCreate") && class_name.contains(sootarguments[2])){
                    list_of_methods.add(method_name+" is in the MainActivity"); 
                }
                // print the class name and method name and maybe something that highlights that it is static
                else if(meth.isStatic() && class_name.contains(advertising_specific_class)){
                list_of_methods.add(method_name+" is static");      
                }
                // class this method belongs to is a subclass of AdView or com.google.android.gms.ads.BaseAdView
                else if(this_class.hasSuperclass() && (this_class.getSuperclass().getName().contains(super_class_of_interest) || this_class.getSuperclass().getName().contains(super_class_of_interest2))){           
                    list_of_methods.add(method_name+" is a subclass of AdView or com.google.android.gms.ads.BaseAdView");  
                }
                else if(!meth.isStatic() && class_name.contains(advertising_specific_class)){                
                    // Loop through parameters and ask if subtype is of the abstract class that contains getAdUnitId
                    List<Type> parameterTypes = meth.getParameterTypes();
                    for (Type type: parameterTypes) {
                        // If is subtype of the abstract class call getAdUnitId
                        if(type.toString().contains("com.google.android.gms.ads.AdView")){
                            list_of_methods.add(method_name+" parameter is a subtype of the abstract class call getAdUnitId");
                        }
                        // if not subtype of abstract class print name and say unsupported currently
                        else{
                            list_of_methods.add(method_name+" is unsupported currently");
                        }
                    }
                }
                // Only add unique items to each class
                if (list_of_methods.size() > 0){
                    List<String> uniqueItems = new ArrayList<>();
                    for (String item : list_of_methods) {
                        if (!uniqueItems.contains(item)) {
                            uniqueItems.add(item);
                        }
                    }
                    dictionary_of_classes.put(class_name, uniqueItems);
                }
            }
        }
        // Iterate over classes and their methods using a dictionary_of_classes
        for (String key : dictionary_of_classes.keySet()) {
            Print(key + ": ");
            List<String> items = dictionary_of_classes.get(key);
            for (String item : items) {
                Print("\t" + item);
            }
        }
         Main.main(new String[] {});
    }
}