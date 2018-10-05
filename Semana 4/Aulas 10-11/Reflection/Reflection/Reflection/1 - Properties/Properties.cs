
using System;

public class Point {
	private double _x; // Backing field
	private double _y;
	public double X { get { return _x; } }
	public double Y { get { return _y; } }
	
	public double _phase; // Coordenadas polares
			
	public double Phase
	{
		get { return _phase; }
		
		set { _phase = value; }
	}
		
	// Erro: não posso definir outra propriedade com o mesmo nome
	 //public char Phase
	 //{
		// get { return 'c'; }
		
		// set { }
	 //}
		
	public double Abs 
	{
		get { return Math.Sqrt(_x*_x + _y*_y); }
		
		set {
			// Coordenadas polares
			double phase = Phase; // Phase: outra propriedade
			_x = value * Math.Cos(phase);
			_y = value * Math.Sin(phase);
		}
	}
}


public class Prog {
	public static void Main1() {
		Point p = new Point();

        p.Phase = Math.PI; // É chamado o set de Phase passando no parâmetro escondido value o valor 180 graus (PI rad)
        p.Abs = 1; // É chamado o set de Abs passando no parâmetro escondido value o valor 1

        // (1, PI) em polares equivale a (-1, 0) em retangulares
		Console.WriteLine("p.x = " + p.X);  
		Console.WriteLine("p.y = " + p.Y);  
		
		Console.WriteLine("p.Phase = " + p.Phase);  
		Console.WriteLine("p.Abs = " + p.Abs);  
	}
}