using System;
using System.Text;

public static class StrJoins
{
	public static String JoinWithPlus(String[] parts)
	{
		String res = "";
		for (int i = 0; i < parts.Length; ++i) {
			res += parts[i];
		}
		return res;
	}

	public static String JoinWithBuilder(String[] parts)
	{
		StringBuilder res = new StringBuilder();
		for (int i = 0; i < parts.Length; ++i) {
			res.Append(parts[i]);
		}
		return res.ToString();
	}

	public static String JoinWithJoin(String[] parts)
	{
		return String.Join("", parts);
	}

}
