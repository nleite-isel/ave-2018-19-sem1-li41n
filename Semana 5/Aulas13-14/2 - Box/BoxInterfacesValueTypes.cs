
using System;

namespace BoxInterfacesValueTypes
{
    interface I
    {
        void Set(int m);
    }

    struct V : I
    {
        public int i;
        public void Inc() { ++i; }
        // Override I.Set
        public void Set(int m) {
            this.i = m;
        }
    }

    public class MyTest
    {
        public static void Main()
        {
            V v = new V();
            object o = v; // box
            v.i = 1;

            I itf = (I)o;
            itf.Set(10);
            V v3 = (V)itf; // unbox
            Console.WriteLine("v3.i = {0}", v3.i);

            ((V)o).Inc(); // unbox
            V v2 = (V)o; // unbox
            Console.WriteLine("v.i = {0}", v.i);
            Console.WriteLine("o.ToString() = {0}", o.ToString());
            Console.WriteLine("v2.i = {0}", v2.i);
        }

    }
}
