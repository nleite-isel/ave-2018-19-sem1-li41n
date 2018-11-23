using System;

namespace MyInterfaces
{
    interface I
    {
        void M();
    }

    public class A : I
    {
        public void M() { Console.WriteLine("A:M"); }
    }

    //public class B : A // 1
    public class B : A, I  // 2
    { 
        new public void M() { Console.WriteLine("B:M"); }
    }

    public sealed class Program
    {
        public static void Main()
        {
            I i = new B();
            i.M(); // Usando // 1 -> A:M
                   // Usando // 2 -> B:M

            A a = (A)i;
            a.M(); // A::M

            B b = (B)i;
            b.M(); // B::M

        }
    }
}
/*
Cenario 1
A:M
A:M
B:M

Cenario 2
B:M
A:M
B:M

*/ 