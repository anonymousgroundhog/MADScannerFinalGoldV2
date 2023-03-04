import org.apache.commons.codec.digest.DigestUtils;

import org.slf4j.*;
// import org.slf4j.LoggerFactory;
import java.util.concurrent.ConcurrentHashMap;
import java.util.Iterator;
import java.util.*;
import java.io.*;
import java.lang.*;
import java.util.concurrent.TimeUnit;
import java.util.Collections;
import java.lang.*;

import Conditions.SootConditionChecker;
import Soot.SootUtil;
import Soot.SootInstrumenter;

import soot.*;

public class SootAnalysis
{
    private static List<String> ThingstToCheck = Arrays.asList(new String[]{"loadAd", "setAdInfo", "setAdString", "onAdClicked", 
        "onAdLoaded", "onAdFailedToLoad", "onAdImpression", "onAdOpened"});
    public static String hash = null; 
    
    // public static void Wait(int varMilliseconds)
    // {
    //     try
    //     {
    //         Thread.sleep(varMilliseconds);
    //     }
    //     catch(InterruptedException ex)
    //     {
    //         Thread.currentThread().interrupt();
    //     }
    // }
    public static void Print(String stringvalue)
    {
        System.out.println(stringvalue);
    }
    
    public static void main(String[] sootarguments)
    {
        Once runOnce = new Once();
        SootUtil sootUtil = new SootUtil();
        LinkedList<String> linked_listStringClassesToInvestigate = new LinkedList<String>();
    	String[] app_name =  sootarguments[0].split("/");
    	String app_name_only = app_name[app_name.length-1];
    	String command = "sha256sum " + sootarguments[0];
        // sootUtil.SetSootOptions(sootarguments);

    	try {
    	    Process process = Runtime.getRuntime().exec(command);
    	    BufferedReader reader = new BufferedReader(
		    new InputStreamReader(process.getInputStream()));
    	    String line;
    	    while ((line = reader.readLine()) != null) {
        		hash = String.valueOf(line).replace(sootarguments[0],"");
        		System.out.println("LINE:" + hash);
    	    }    	 
    	    reader.close();
    	} catch (IOException e) {
    	    e.printStackTrace();
    	}
            
            System.out.println("Running analysis on: " + sootarguments[0] + "\n");
            // retrieveAllClassNamesAndMethods();
            // printAllClassNamesAndMethods();
            // setMainClassFromOptions();
            PackManager.v().getPack("jtp").add(new Transform("jtp.myInstrumenter", new BodyTransformer()
            {
                @Override
                protected void internalTransform(final Body body, String phaseName, @SuppressWarnings("rawtypes") Map options)
                {   
                    SootInstrumenter thisSootInstrumenter = new SootInstrumenter();
                    SootMethod thisMethod = body.getMethod();
                    SootClass thisClass = thisMethod.getDeclaringClass();
                    String stringClassName =  thisClass.toString();
                    String thisMethodName = thisMethod.getName();
                    if (stringClassName.contains("com.google.android.gms.example.bannerexample.Test")){
                        thisSootInstrumenter.IterateOverUnitsAndInvestigateBody(body,thisClass, thisMethodName);
                    }

                    if (stringClassName.contains("com.google.android.gms.ads") && !stringClassName.contains("com.google.android.gms.ads.BaseAdView")){
                        if(ThingstToCheck.contains(thisMethodName)){ 
                            // Print("Found " + thisMethodName + "!!!");
                            thisSootInstrumenter.IterateOverUnitsAndInsertLogMessage(body, app_name_only, hash, stringClassName, thisMethod.getName(), String.valueOf(thisMethod.getParameterTypes()), thisClass);                        
                        }
                    }
                    // else if (stringClassName.contains("MainActivity") && thisMethodName.contains("onResume")){
                    //     IterateOverUnitsAndInsertLogMessage(body, app_name_only, hash, stringClassName, thisMethod.getName(), String.valueOf(thisMethod.getParameterTypes()));

                    // }  
                }

            }));
            
            // soot.Main.main(sootargs);
            soot.Main.main(sootUtil.setupSoot(sootarguments));
        }
}
