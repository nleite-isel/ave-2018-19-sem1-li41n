using System;

namespace Constants {

	public class Program
	{
		public static void Main() {
			SomeType t = new SomeType();
			
			int capacity = SomeType.capacity;
            //SomeType.capacity = 9; // Erro, campo constante
			 //t.increment = 20; // Erro, campo readonly
			int increment = t.increment;
			
			Console.WriteLine("capacity = {0}", capacity);
			Console.WriteLine("increment = {0}", increment);
				
			Console.WriteLine("t.aluno.Number = {0}", t.aluno.Number);
			t.aluno.Number = 10; // OK, posso mudar o conteudo mas nao a referencia.
			Console.WriteLine("t.aluno.Number = {0}", t.aluno.Number);
			//t.aluno = new Aluno(11); // Erro, campo readonly
		}
	}
}
