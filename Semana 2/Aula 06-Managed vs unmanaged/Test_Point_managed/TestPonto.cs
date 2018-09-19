using System;

class Program{
	private static void Main(){
		Ponto p = new Ponto(5,7);
		p.Print();
		Console.WriteLine("Modulo = " + p.GetModule());
		Console.WriteLine("x = {0}", p._x);	
		Console.WriteLine("y = {0}", p._y);
		//Console.WriteLine("w = {0}", p._w);			
	}
}