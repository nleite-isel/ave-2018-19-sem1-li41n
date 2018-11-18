using System;
namespace Aulas2526.VirtualCall1
{
    class A {
        public virtual void M1() {
            Console.WriteLine("virtual A::M1");
        }
    }

    class B : A
    {
        public void M2()
        {
            Console.WriteLine("B::M2");
        }
    }

    class C : B
    {
        public override void M1()
        {
            Console.WriteLine("virtual C::M1 - override A::M1");
        }
        public void M3()
        {
            Console.WriteLine("C::M3");
        }
    }

    public class Program
    {
        public static void Main()
        {
            A c = new C();
            c.M1();  // C::M1
            //c.M2();
            ((B)c).M2();

            A b = new B();
            b.M1(); // B::M1 <=> A::M1
        }
    }
}
/*
virtual C::M1 - override A::M1
virtual A::M1

*/ 