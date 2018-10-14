
using System;

namespace RefOutParameters {
	
	public sealed class Program1 {
		public static void Swap(String s1, String s2) { 
			String aux = s1;
			s1 = s2;
			s2 = aux;
		}
		
		public static void Swap_ok(ref String s1, ref String s2) { 
			String aux = s1;
			s1 = s2;
			s2 = aux;
		}
		
		public static void Main1() {
			String a1 = "str 1";
			String a2 = "str 2";
	        Swap(a1, a2);
			Console.WriteLine("a1 = " + a1 + "; a2 = " + a2);  

			Swap_ok(ref a1, ref a2);
			Console.WriteLine("a1 = " + a1 + "; a2 = " + a2);  
								
		}
	}

}



