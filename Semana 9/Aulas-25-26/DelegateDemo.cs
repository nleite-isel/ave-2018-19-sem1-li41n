using System;
namespace Aula21
{
    public delegate Object BenchmarkMethod();

    public class DelegateDemo
    {
        private static object MStatic() {
            Console.WriteLine("MStatic");
            return null;
        }
        private object MInstance()
        {
            Console.WriteLine("MInstance");
            return null;
        }
        public static void Main1() {
            BenchmarkMethod bm = new BenchmarkMethod(MStatic);
            DelegateDemo t = new DelegateDemo();
            BenchmarkMethod bm1 = new BenchmarkMethod(t.MInstance);

            bm.Invoke();
            bm1();

            if (bm.Target == null)
            {
                Console.WriteLine("Static");
            }
            else
            {
                Console.WriteLine("Instance, type = {0}", bm.Target.GetType());
            }
            Console.WriteLine("Method = {0}", bm.Method.Name);

            if (bm1.Target == null)
            {
                Console.WriteLine("Static");
            }
            else
            {
                Console.WriteLine("Instance, type = {0}", bm1.Target.GetType());
            }
            Console.WriteLine("Method = {0}", bm1.Method.Name);
        }
    }
}
