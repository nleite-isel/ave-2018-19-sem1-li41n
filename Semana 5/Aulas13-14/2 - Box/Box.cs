
using System;

namespace Box
{

    struct V
    {
        public int i;
        public void Inc() { ++i; }
    }

    public class MyTest
    {
        public static void Main1()
        {
            V v = new V();
            object o = v; // box
            v.i = 1;
            ((V)o).Inc(); // unbox
            V v2 = (V)o; // unbox
            Console.WriteLine("v.i = {0}", v.i);
            Console.WriteLine("o.ToString() = {0}", o.ToString());
            Console.WriteLine("v2.i = {0}", v2.i);
        }
    }
}
