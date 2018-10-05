

// Create a DLL assembly named "SomeTypeLibrary.dll"

using System;


public class Aluno {
	int number;
	public Aluno(int nr) { number  = nr; }
	public int Number {
		get { return number; }
		set { number = value; }
	}

}

// Para ver cenario estudado na aula, alterar o campo capacity e recompilar apenas a DLL SomeTYpeLibrary.
// Depois executar cliente (Program) sem recompilar (executar na linha de comandos)
public class SomeType
{
	public const int capacity = 10;
	//public const int capacity = 11;
	public readonly int increment = 9;
	public readonly Aluno aluno = new Aluno(123);
		
	public SomeType() { increment = 15; }
}


