using System;
using System.Reflection;

public class RefLog : ILog 
{
	public void Log(Object obj, int level)
	{
		Console.Write("{0} {{ ", obj.GetType().Name);
		foreach (FieldInfo fi in obj.GetType().GetTypeInfo().GetFields(LogOps.ALL_INSTANCE)) {
			if (LogOps.CanLog(fi)) {
				if (LogOps.GetLogLevel(fi) <= level) { 
					Console.Write("{0}: {1}; ", fi.Name, fi.GetValue(obj));
				}
			}
		}
		Console.WriteLine('}');
	}
}
