package JavaHelper;

import java.util.*;
public class JavaHelper
{

	public static String ConcatenateStrings(List<String> thisList)
    {
        StringBuilder stringBuilder = new StringBuilder();

		// stringBuilder.append("Baeldung");
		// stringBuilder.append(" is");
		// stringBuilder.append(" awesome");
		for (int i = 0; i < thisList.size(); i++){
			// System.out.println(thisList.get(i));
			stringBuilder.append(thisList.get(i));
		}
		return(stringBuilder.toString());
    }
}