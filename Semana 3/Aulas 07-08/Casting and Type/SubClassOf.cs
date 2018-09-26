using System;

namespace Casting
{
	interface I { }
	class A { }
	class B : A, I { }


	public class SubClassOf
	{
		public static void Main1()
		{
			Type tA = typeof(A);
			Type tB = typeof(B);

			bool b1 = tA.IsSubclassOf (tB); // A extends B?
			Console.WriteLine("tA.IsSubclassOf (tB) ? {0}", b1); // false

			bool b2 = tB.IsSubclassOf (tA); // B extends A?
			Console.WriteLine("tB.IsSubclassOf (tA) ? {0}", b2); // true

			bool b3 = tB.IsAssignableFrom (tA); // B b = a is possible? Or A extends B?
			Console.WriteLine("tB.IsAssignableFrom (tA) ? {0}", b3); // false

			bool b4 = tA.IsAssignableFrom (tB); // A a = b is possible? Or B extends A?
			Console.WriteLine("tA.IsAssignableFrom (tB) ? {0}", b4); // true

			bool b5 = (typeof(I)).IsAssignableFrom (tB); // I i = b is possible? Or B implements I?
			Console.WriteLine("(typeof(I)).IsAssignableFrom (tB) ? {0}", b5); // true

		}
	}
}

