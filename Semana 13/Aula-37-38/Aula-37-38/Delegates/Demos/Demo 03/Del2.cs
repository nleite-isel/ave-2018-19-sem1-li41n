
using System;


namespace Del2
{
    // Delegate type
    delegate int DT(int i);

    class Del
    {
        private int val;
        public Del() { val = 99; }

        public static int f1(int i)
        {
            Console.WriteLine("f1 called i={0}", i);
            return 10;
        }

        public static int f2(int i)
        {
            Console.WriteLine("f2 called i={0}", i);
            return 20;
        }


        public int instance(int i)
        {
            Console.WriteLine("Instance called: this.val={0}; i={1}", val, i);
            return i;
        }


        public static void Main1()
        {

            DT d1 = f1, d2 = f2;

            //DT d3 = d1 + d2;
            DT d3 = d1;
            d3 += d2;
            Del obj = new Del();

            d3 += obj.instance;

            Console.WriteLine(d3(100));

            // d3 -= d2;
            // d3 -= new DT(f2); // Equivalente à linha anterior
            // d3 -= f2;
            //d3 -= obj.instance;

            Console.WriteLine(d3(100));

            Console.WriteLine("\nInvocando o metodo GetInvocationList()");
            // Invocando o metodo GetInvocationList()
            int param = 100;
            foreach (DT d in d3.GetInvocationList())
            {
                Console.WriteLine(param);
                param = d(param);
            }
            Console.WriteLine(param);

        }
    }

}