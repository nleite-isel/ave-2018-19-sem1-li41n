using System;

namespace IdentityAndEquality
{

    class R { public int i; }  // class

    struct V { public int i; } // estrutura


    class IdentityAndEqualityTest
    {
        public static void Main1()
        {
            R r = new R();
            R r2 = new R();
            r.i = 10;
            r2.i = 10;

            V v = new V();
            V v2 = new V();
            v.i = 10;
            v2.i = 10;
            //v2.i = 11;

            Console.WriteLine(v.Equals(v)); // True, porque apesar de dois box tem o mesmo tipo exacto e os mesmos campos
            Console.WriteLine(v.Equals(v2)); // True, idem
            Console.WriteLine(object.ReferenceEquals(v, v)); // False, pois sao duas versoes boxed que sao comparadas

            Console.WriteLine(r.Equals(r)); // True
            Console.WriteLine(r.Equals(r2)); // False

        }
    }
}