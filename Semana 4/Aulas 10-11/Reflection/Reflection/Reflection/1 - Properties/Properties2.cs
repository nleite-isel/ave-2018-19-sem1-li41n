using System;

public class MyArrayList {
	int[] a;
	
	public MyArrayList() { a = new int[10]; }

//	public int this[] {
//		get { return 10; }
//		set { }
//	}

	// Indexer
	public int this[int idx] {
		get { return a[idx]; }
		set { a[idx] = value; }
	}
	// Outro indexer
	public int this[int idx1, int idx2] {
		get { return a[idx1]; }
		set { a[idx1] = value; }
	}
	
	public static void Main1() {
		MyArrayList l = new MyArrayList();
		
		l[0] = 10;
		l[1] = 20;
		//l.set_Item(1, 20);  // Erro, nao pode ser invocado explicitamente
		for (int i = 0; i < 10; ++i)
			Console.WriteLine(l[i]); // Invoca metodo l.get_Item(i)
	}
}