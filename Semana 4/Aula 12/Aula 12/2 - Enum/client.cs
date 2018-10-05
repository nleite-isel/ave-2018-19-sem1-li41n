using System;
using MyEnum;

namespace MyEnum
{
	class MyEnumClient {
		public static void Main1() {
			Type enumType = typeof(Cores);
			Console.WriteLine("{0} info:", enumType);
			Console.WriteLine ("Names:");
			foreach (string s in System.Enum.GetNames(enumType))
				Console.Write(s + " ");
			Console.WriteLine ();
			Console.WriteLine ("Values:");
			foreach (object/*string*/ o in System.Enum.GetValues(enumType))
				Console.Write(o + " ");
			Console.WriteLine ();
			// Convert to int
			Console.WriteLine ("Values converted to int:");
			foreach (int o in System.Enum.GetValues(enumType))
				Console.Write(o + " ");
			Console.WriteLine ();
			Console.WriteLine("UnderlyingType: {0}", System.Enum.GetUnderlyingType(enumType));

			Cores c = Cores.Azul;
			Console.WriteLine("c.ToString() = {0}", c.ToString());
			int i = (int) c;
			Console.WriteLine("Enum value converted to int, i = {0}", i);
			Console.WriteLine("(c-1).ToString() = {0}", (c-1).ToString());
			Console.WriteLine("Cores.Azul - Cores.Verde = {0}", Cores.Azul - Cores.Verde);
			Console.WriteLine("Cores.Azul + 20 = {0}", Cores.Azul + 20);
			Console.WriteLine("Cores.Azul + 20 is defined? {0}", System.Enum.IsDefined(enumType, Cores.Azul + 20));
			Console.WriteLine("Cores.Azul + 1 is defined? {0}", System.Enum.IsDefined(enumType, Cores.Azul + 1));
		}
	}
}