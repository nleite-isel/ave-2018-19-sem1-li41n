using System;

class Program {
	public static void Main() {
        Point p = new Point(3, 9);
		p.Print();
		Console.WriteLine("Modulo = " + p.GetModule());
		Console.WriteLine("y = {0}", p.y);		
	}
}