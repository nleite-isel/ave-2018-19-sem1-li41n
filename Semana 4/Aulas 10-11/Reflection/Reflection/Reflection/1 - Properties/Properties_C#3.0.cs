using System;

namespace PropertiesCSharp3_0 {

	class Point {
        public double X { get; private set; } // Properties no C# 3.0. É criado automaticamente, pelo compilador, 
								              // um backing field associado à propriedade.
		public double Y { get; private set; }
		
		public double Phase { get; set; } // Coordenadas polares
				
		public double Abs 
		{
			get { return Math.Sqrt(X*X + Y*Y); }
			
			set {
				// Coordenadas polares
				double phase = Phase; // Phase: outra propriedade
				//X = value * Math.Cos(phase);
				Y = value * Math.Sin(phase);
			}
		}
	}


	public class Prog {
		public static void Main1() {
			Point p = new Point();
            p.Phase = Math.PI; // É chamado o set de Phase passando no parâmetro escondido value o valor 180 graus (PI rad)
			p.Abs = 1; // É chamado o set de Abs passando no parâmetro escondido value o valor 1
			
			//p.Y = 10; // Erro, acessor set nao e publico
			
            // (1, PI) em polares equivale a (-1, 0) em retangulares
			Console.WriteLine("p.x = " + p.X);  
			Console.WriteLine("p.y = " + p.Y);  
			
			Console.WriteLine("p.Phase = " + p.Phase);  
			Console.WriteLine("p.Abs = " + p.Abs);  
		}
	}

}