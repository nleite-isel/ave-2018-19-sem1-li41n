using System;
using System.Windows.Forms;
using System.IO;


namespace Del4
{

    internal delegate void Feedback(Int32 value);


    public sealed class Program
    {
        int i = 29;

        private static void Counter(Int32 from, Int32 to, Feedback fb)
        {
            if (fb == null) return;

            // If any callbacks are specified, call them
            for (Int32 val = from; val <= to; val++)
            {
                fb(val);
                //<=>
                // fb.Invoke(val);
            }
        }

        // Utilizacao de delegate anonimo dentro dum metodo de instancia.
        // A variavel this e' capturada
        private /*static*/ void AnonymousDelegateDemo()
        {
            Console.WriteLine("----- Anonymous Delegate Demo -----");

            Counter(1, 3, delegate (int value)
            {
                Console.WriteLine("i = " + this.i + ", Item = " + value.ToString());
                //this.i = 10;
            });
            Console.WriteLine();

            ////Ou:
            //Feedback anonymous = delegate(int value) {
            //    Console.WriteLine("i = " + this.i + ", Item = " + value.ToString());
            //};
            //Counter(1, 3, anonymous);
            //Console.WriteLine();

            ////Ou:
            //Feedback lambda = (int value) => Console.WriteLine("i = " + this.i + ", Item = " + value.ToString());
            //Counter(1, 3, lambda);
            //Console.WriteLine();

        }

        public static void Main1()
        {
            Program p = new Program();

            p.AnonymousDelegateDemo();
        }

    }
}

