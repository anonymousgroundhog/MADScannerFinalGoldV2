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
    public static void main(String[] sootarguments)
    {
        SootInstrumenter thisSootInstrumenter = new SootInstrumenter();
        thisSootInstrumenter.RunInstrumentationOnAPK(sootarguments);
    }
}
