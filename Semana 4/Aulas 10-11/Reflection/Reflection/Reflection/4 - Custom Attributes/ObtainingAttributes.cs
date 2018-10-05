using System;
using System.Reflection;

[AttributeUsage(AttributeTargets.Method)]
class MyAttribute : Attribute {
	public string Info { get; private set; }
	public MyAttribute(string s) { Info = s; }
}


public class Program {
	[My("Ola")]
	public void M() {}
	
	public static void Main1() {
		MyAttribute att = null;
		foreach (MethodInfo mi in typeof(Program).GetMethods()) {
			if ((att = (MyAttribute)
                 Attribute.GetCustomAttribute(mi, typeof(MyAttribute), false)) != null) {
				Console.WriteLine("Found attribute {0} in method {1}: " +
                                  "att.Info = {2}", 
                                  typeof(MyAttribute), mi.ToString(), att.Info);
			}
		}
	
	
	}

}
