using System;

using System.Reflection;

namespace ReflectionExample
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            String s = "Ola";
            Type t = s.GetType();

            Console.WriteLine("type name = {0}", t.Name);
            MethodInfo[] mis = t.GetMethods(); // Get methods
            foreach (MethodInfo mi in mis)
            {
                Console.WriteLine("current method info = {0}", mi.Name);
            }
        }
    }
}
