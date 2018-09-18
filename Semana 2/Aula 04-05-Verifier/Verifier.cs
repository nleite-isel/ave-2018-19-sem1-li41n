

using System;

public class A {

	public static int m(){
		return 10;
	}
	public static void Main(){ // assinatura ok
	//public static void Main(String[] args){ // assinatura ok
		Console.WriteLine(A.m());
	}

}