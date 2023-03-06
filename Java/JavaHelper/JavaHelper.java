package JavaHelper;

import java.util.*;
public class JavaHelper
{

	public static String ConcatenateStrings(List<String> thisList)
    {
        StringBuilder stringBuilder = new StringBuilder();
		for (int i = 0; i < thisList.size(); i++){
			stringBuilder.append(thisList.get(i));
		}
		return(stringBuilder.toString());
    }
}