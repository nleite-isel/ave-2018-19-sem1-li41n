
using System;

namespace Del1
{

    delegate int DT(int i);

    class Del
    {
        private int val;
        public Del() { val = 99; }

        public static int f1(int i)
        {
            Console.WriteLine("[Del] f1 called i = {0}", i);
            return 10;
        }

        /*public*/ static int f2(int i)
        {
            Console.WriteLine("[Del] f2 called i = {0}", i);
            return 20;
        }

        public static void error(int i) { }

        /*public*/
        private int instance(int i)
        {
            Console.WriteLine("[Del] Instance called: this.val = {0}, i = {1}", val, i);
            return val;
        }

        public static void Main1()
        {
            DT d = f1;
            //<=>
            //DT d = new DT(Del.f1);
            d(1);
            d.Invoke(1);

            //d = f2;
            d = new DT(Del.f2);
            d(2);

            //d = new Del().instance;
            Del p = new Del();
            d = p.instance;
            //d = new DT(p.instance);
            d(3);
            //p.instance(10); // E' possivel associar metodos privados a delegates mas so' e' possivel chama-los dentro da classe.

            d = new Test().instance;
            d(20);

            //d = error; // Error, void Del.error(int) has the wrong return type
            //////
            DT chain1 = f1;
            chain1 += f2;

            DT chain2 = p.instance;
            chain2 += f1;

            DT chain3 = chain1 + chain2;

            Console.WriteLine(chain3(100));
            Console.WriteLine(chain3.GetInvocationList().Length);
            chain3 -= f1;
            Console.WriteLine(chain3(100));
            Console.WriteLine(chain3.GetInvocationList().Length);
        }

    }
    class Test {
        private int val;

        /*private*/ public int instance(int i)
        {
            Console.WriteLine("[Test] Instance called: this.val = {0}, this.i = {1}", val, i);
            return val;
        }

    }
}