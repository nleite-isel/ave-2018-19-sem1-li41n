using System;
using System.IO;
using System.Windows.Forms;

namespace Del3
{
    // Richter CLR via C# example

    // Declare a delegate type; instances refer to a method that
    // takes an Int32 parameter and returns void.
    internal delegate void Feedback(Int32 value);


    public sealed class Program
    {
        private static void FeedbackToConsole(Int32 value)
        {
            Console.WriteLine("Item = " + value.ToString());
        }

        private static void FeedbackToMsgBox(Int32 value)
        {
            MessageBox.Show("Item = " + value.ToString());
        }

        private void FeedbackToFile(Int32 value)
        {
            StreamWriter sw = new StreamWriter("Status", true);
            sw.WriteLine("Item = " + value.ToString());
            sw.Close();
        }

        private static void Counter(Int32 from, Int32 to, Feedback fb)
        {
            if (fb == null) return;

            // If any callbacks are specified, call them
            for (Int32 val = from; val <= to; val++)
            {
                fb(val);
                //<=>
                //fb.Invoke(val);
            }
        }

        private static void StaticDelegateDemo()
        {
            Console.WriteLine("----- Static Delegate Demo -----");
            Counter(1, 3, null);
            Counter(1, 3, new Feedback(Program.FeedbackToConsole));
            Counter(1, 3, new Feedback(FeedbackToMsgBox)); // "Program." is optional
                                                           // Forma simplificada 
            Counter(1, 3, FeedbackToConsole);

            Console.WriteLine();
        }

        private static void InstanceDelegateDemo()
        {
            Console.WriteLine("----- Instance Delegate Demo -----");
            Program p = new Program();
            //Counter(1, 3, new Feedback(p.FeedbackToFile));
            // Forma simplificada 
            Counter(1, 3, p.FeedbackToFile);

            Console.WriteLine();
        }


        //
        // VER CODIGO IL
        //
        private static void AnonymousDelegateDemo()
        {
            Console.WriteLine("----- Anonymous Delegate Demo -----");

            //Counter(1, 3, delegate (int value)
            //{
            //    Console.WriteLine("Item = " + value.ToString());
            //});
            //Console.WriteLine();

            // Ou:
            Feedback anonymous = delegate(int value) {
                Console.WriteLine("Item = " + value);
            };

            Counter(1, 3, anonymous);
            Console.WriteLine();

            // Ou:
            Feedback anonymous1 = (int value) => Console.WriteLine("[anonymous1] Item = " + value);

            Counter(1, 3, anonymous1);
            Console.WriteLine();
        }

        private static void ChainDelegateDemo1(Program p)
        {
            Console.WriteLine("----- Chain Delegate Demo 1 -----");

            Feedback fb1 = new Feedback(FeedbackToConsole);
            Feedback fb2 = new Feedback(FeedbackToMsgBox);
            Feedback fb3 = new Feedback(p.FeedbackToFile);

            /*
            // Forma simplificada
            Feedback fb1 = FeedbackToConsole;
            Feedback fb2 = FeedbackToMsgBox;
            Feedback fb3 = p.FeedbackToFile;
            */

            // Create Delegate chain
            Feedback fbChain = null;
            fbChain = (Feedback)Delegate.Combine(fbChain, fb1);
            fbChain = (Feedback)Delegate.Combine(fbChain, fb2);
            fbChain = (Feedback)Delegate.Combine(fbChain, fb3);

            Counter(1, 2, fbChain);
            Console.WriteLine();

            // A linha seguinte nao funciona, o parametro tem que ser um delegate e nao um metodo
            //fbChain = (Feedback) Delegate.Remove(fbChain, FeedbackToMsgBox);

            fbChain = (Feedback)Delegate.Remove(fbChain, fb2);

            // Ou:
            //fbChain = (Feedback) Delegate.Remove(fbChain, new Feedback(FeedbackToMsgBox));

            // Duas instancias de delegate sao iguais sse tiverem o mesmo this e o mesmo funcPtr

            Counter(1, 2, fbChain);
        }

        // Forma simplificada
        private static void ChainDelegateDemo2(Program p)
        {
            Console.WriteLine("----- Chain Delegate Demo 2 -----");
            Feedback fb1 = new Feedback(FeedbackToConsole);
            Feedback fb2 = new Feedback(FeedbackToMsgBox);
            Feedback fb3 = new Feedback(p.FeedbackToFile);

            // Criacao de cadeia de delegates
            Feedback fbChain = null;
            fbChain += fb1;
            fbChain += fb2;
            fbChain += fb3;

            // Equivalente a fazer:
            //fbChain += FeedbackToConsole;
            //fbChain += FeedbackToMsgBox;
            //fbChain += p.FeedbackToFile;

            Counter(1, 2, fbChain);
            Console.WriteLine();

            fbChain -= FeedbackToMsgBox;
            Counter(1, 2, fbChain);
        }

        public static void Main1()
        {
            //StaticDelegateDemo();
            //InstanceDelegateDemo();
            AnonymousDelegateDemo();

            //ChainDelegateDemo1(new Program());
            //ChainDelegateDemo2(new Program());
        }

    }
}
