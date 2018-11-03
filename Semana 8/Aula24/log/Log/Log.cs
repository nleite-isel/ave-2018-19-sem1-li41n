using System;
using System.Reflection;

public class DontLogAttribute : Attribute {}

public class LevelAttribute : Attribute {
	public int Level { get;	private set; }
	public LevelAttribute(int level) { this.Level = level; }
}

public interface ILog 
{
	void Log(Object obj, int level);
}

public static class LogOps
{
	public const BindingFlags ALL_INSTANCE = 
		BindingFlags.Instance | 
		BindingFlags.FlattenHierarchy |
		BindingFlags.NonPublic |
		BindingFlags.Public;

	public static bool CanLog(FieldInfo fi) 
	{
		return !fi.IsDefined(typeof(DontLogAttribute), false);
	}
	
	public static int GetLogLevel(FieldInfo fi)
	{
		Attribute[] attrs = (Attribute[])fi.GetCustomAttributes(typeof(LevelAttribute), false);
		return attrs.Length == 0 ? -1 : ((LevelAttribute) attrs[0]).Level; 
	}
}
