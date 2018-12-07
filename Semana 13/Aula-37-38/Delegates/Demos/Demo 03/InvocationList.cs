
using System;
using System.Collections.Generic;



delegate int DT(int i);

class DelXPTO {
    private int val;
    public DelXPTO(int i) { val = i; }

    public static int f1(int i) {
        Console.WriteLine("f1 called, i={0}", i);
        return i + 10;
    }

    public static int f2(int i) {
        Console.WriteLine("f2 called, i={0}", i);
        return i*2;
    }

    public int instance(int i) {
        Console.WriteLine("Instance called: i= {0}, this.val={1}", i, this.val);
        return this.val-i;
    }
    
    
    public static void Main1() {
        DT pipe = DelXPTO.f1;
        pipe += DelXPTO.f2;
        pipe += new DelXPTO(2).instance;

        int initial = 10;
        //int r = pipe(initial);
        int r = pipe.Invoke(initial);

        Console.WriteLine(r); // -8, nao funciona correctamente

        r = initial;
        foreach (DT del in pipe.GetInvocationList()) {
            r = del(r);
        }
        Console.WriteLine(r); // -38, OK
        // Ver codigo IL gerado que utiliza objeto IEnumerator
        //int[] a = { 1, 2, 3 };
        //List<int> l = new List<int>(a);
        //foreach (var item in l)
        //{
        //    Console.WriteLine(item);
        //}
        //l.GetEnumerator().
    }
}