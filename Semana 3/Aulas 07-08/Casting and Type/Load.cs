using System;
using System.IO;
using System.Reflection;

namespace Reflection
{
	public sealed class Util {
		public static void UseType() {
			// get the type object
			Type type = typeof(Math);
			// get the underlying type handle
			RuntimeTypeHandle htype = type.TypeHandle;
			// recover the type object from the handle
			Type t2 = Type.GetTypeFromHandle(htype);
			// t2 and type now refer to the same System.Type object
			Console.WriteLine("type == t2: {0}", type == t2);

			// Show methods in Math class
			foreach (MethodInfo mi in type.GetMethods()) {
				Console.WriteLine(mi.Name);
			}

			// Print htype value (metadata token value)
			Console.WriteLine("htype: {0}", htype.Value);
		}


		public static void UseType1() {
			
			// load the assembly using implicit probing
			Assembly assm = Assembly.Load("mscorlib.dll");

			Type[] types = assm.GetTypes ();
			foreach (Type t in types) {
				Console.WriteLine (t.Name);
			}
				
			Console.WriteLine ();
            Console.WriteLine("Getting System.Math...");

			// get the type object
			Type type = assm.GetType("System.Math");
			// get the underlying type handle
			RuntimeTypeHandle htype = type.TypeHandle;
			// recover the type object from the handle
			Type t2 = Type.GetTypeFromHandle(htype);
			// t2 and type now refer to the same System.Type object
			Console.WriteLine("type == t2: {0}", type == t2);

			// Show methods in Math class
			foreach (MethodInfo mi in type.GetMethods()) {
				Console.WriteLine(mi.ToString());
			}

			// Print htype value (metadata token value)
			Console.WriteLine("htype: {0}", htype.Value);
            ////////////////////////////////////////////////

            Console.WriteLine();
            string path = Directory.GetCurrentDirectory();
            Console.WriteLine("Current directory: " + path);

			// load assembly from specific location
            Assembly assm1 = Assembly.LoadFrom("/home/nuno/Nuno/ISEL/Ensino/Ano 18-19/Inverno/AVE/LI41N/Aulas-Prep/Semana 3/Aulas 07-08/Casting and Type/bin/Debug/Casting.exe");

            // Get public and non public types from assembly
			Type[] typess = assm1.GetTypes ();
			foreach (Type t in typess) {
				Console.WriteLine (t.Name);
			}

		}

	}


	class MainClass
	{
		public static void Main(string[] args)
		{
			//Util.UseType ();
			Util.UseType1 ();

		}
	}

}


