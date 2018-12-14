
using System;
using System.Collections.Generic;


struct V { 
	public int val; 
}



class Test
{
	static void Main1() {
	
		//Nullable<int> a = null;
		//Nullable<int> b = 3;

		//int? c = null;
		//int? d = 5;
  //      //int d = 5;
		
  //      b += d;                // b <- 8
  //      //d = (int)(a + b);             // d <- null   (porque a vale null)

		//d = a + b;             // d <- null   (porque a vale null)

  //      //b += c; // b.Value == null
  //      //int e = b;        // Erro de compilacao, cast necessario
		//int e = (int)b;        // e <- 8
		////int f = (int)c;        // excecao    (porque c vale null)

		//int g = c ?? -1;       // g <- -1     (porque c vale null)
		//int h = a ?? c ?? 0;   // h <- 0 (porque a e c valem null)
		//int h1 = (a ?? (c ?? 0));  // h <- 0 (porque a e c valem null)
	  
		//Console.WriteLine("a = " + a);
		//Console.WriteLine("b = " + b);
		//Console.WriteLine("c = " + c);
		//Console.WriteLine("d = " + d);
		//Console.WriteLine("e = " + e);
		//Console.WriteLine("g = " + g);
		//Console.WriteLine("h = " + h);
		//Console.WriteLine("h1 = " + h1);

        //if (b == null)
        //    Console.WriteLine("b is null");
        //else
            //Console.WriteLine("b is not null");

        //////////////////////////////////////////////
        // Working with custom value types

  //      V? nullableV = null;
  //      object oV = nullableV; // E' gerado box, mas em runtime o AVE verifica se o campo HasValue иж
  //                              //  false. Se for, nao faz box e coloca null em 'oV'
		//V v = (V) oV; // Excecao NullReferenceException
		//Console.WriteLine(v.val);
        // IL:
        // .locals init([mscorlib]System.Nullable`1 < valuetype V > V_0,
        //             object V_1,
        //             valuetype V V_2)
        // IL_0000: nop
        // IL_0001: ldloca.s V_0
        // IL_0003: initobj[mscorlib]System.Nullable`1 < valuetype V >
        // IL_0009: ldloc.0
        // IL_000a: box[mscorlib]System.Nullable`1 < valuetype V >
        // IL_000f: stloc.1
        // IL_0010: ldloc.1
        // IL_0011: unbox.any V
        // IL_0016: stloc.2
        // IL_0017: ldloc.2
        // IL_0018: ldfld int32 V::val
        // IL_001d: call       void [mscorlib]System.Console::WriteLine(int32)
        // IL_0022: nop
        // IL_0023: ret
		//////////////////////////////////////////////
		
        //
		// Example 3
        //
		V? nv = new V();
		V v = (V) nv; // Invoca propriedade Value e stloc na instancia v
		v.val = 10;
        object o1 = nv; // box Nullable de V
        object o = v; // box de V


        // Ver IL

		Console.WriteLine(nv);
        Console.WriteLine(o);

        Console.WriteLine(o.GetType());
		
		V unboxV = (V)o; // unbox V
        Console.WriteLine("unboxV.val = " + unboxV.val);
		
        V unboxNullableV = (V)o1; // unbox V
        Console.WriteLine("unboxNullableV.val = " + unboxNullableV.val);
	
        V? unboxNullableV1 = (V?)o1; // unbox Nullable V
        Console.WriteLine("unboxNullableV1.Value.val = " + unboxNullableV1.Value.val);

        int? x = null;
        object o2 = x;

        Console.WriteLine(o2);
        //int a = (int)o2;
        int? b = (int?)o2;
        //Console.WriteLine(a);
        Console.WriteLine("b = " + (b == null ? "NULL" : b.ToString()));
        /*
V
V
V
unboxV.val = 10
unboxNullableV.val = 0
unboxNullableV1.Value.val = 0

b = NULL
         */ 
	}
}