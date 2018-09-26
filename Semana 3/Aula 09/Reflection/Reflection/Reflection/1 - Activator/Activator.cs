using System;
using System.Reflection;

namespace ActivatorDemo {

	class Program {

		// 1
		public Program() { Console.WriteLine("Called Ctor()"); }
		// 2
		public Program(int i) { Console.WriteLine("Called Ctor(int i), parameter i = {0}", i); }
		// 3
		public Program(string s) { Console.WriteLine("Called Ctor(string s), parameter s = {0}", s); }

		public static void Main() {
            /// NOTA: O metodo Activator.CreateInstance e' usado quando apenas se tem o representante dum tipo (instancia de Type)
            /// No exemplo abaixo, a classe Program esta definida no proprio assembly e nao e' necessario usar o metodo Activator.CreateInstance,
            /// podendo ser usado o construtor.
            /// O metodo Activator.CreateInstance e' adequado para criar instancias de tipos carregados dum assembly dinamicamente onde apenas
            /// se tem uma referencia para um objeto do tipo Type.
			Program prog;
			// 1
			prog = (Program)Activator.CreateInstance(typeof(Program));
			// 2
			prog = (Program)Activator.CreateInstance(typeof(Program), new object[1]{ 10 }); 
//				prog = (Program)Activator.CreateInstance(typeof(Program), new object[2]{ 10, 5 }); // Erro, nao existe construtor (int, int)
			prog = (Program)Activator.CreateInstance(typeof(Program), new object[1]{"10"}); // Erro, caso 3) nao esteja definido
				
		}
	}
}
 