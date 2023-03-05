import org.apache.commons.codec.digest.DigestUtils;

import org.slf4j.*;
import java.util.*;
import java.io.*;
import java.lang.*;

import Soot.SootUtil;
import Soot.SootInstrumenter;

import soot.*;

public class SootAnalysis
{
    private static List<String> ThingstToCheck = Arrays.asList(new String[]{"loadAd", "setAdInfo", "setAdString", "onAdClicked", 
        "onAdLoaded", "onAdFailedToLoad", "onAdImpression", "onAdOpened"});
    public static String hash = null; 
    
    public static void main(String[] sootarguments)
    {
        SootInstrumenter thisSootInstrumenter = new SootInstrumenter();
        // thisSootInstrumenter.RunInstrumentationOnAPK(sootarguments);
        // thisSootInstrumenter.ReturnApplicationClasses(sootarguments);
        thisSootInstrumenter.Print(thisSootInstrumenter.ReturnApplicationClasses(sootarguments).toString());
        }
}
