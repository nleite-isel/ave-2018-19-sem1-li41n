using System;

abstract class A
{
    public void MInstance() { Console.WriteLine("A::MInstance"); }
    public virtual void MVirtual() { Console.WriteLine("A::MVirtual"); }
    public abstract void MAbstract();
}

class B : A {
	//public void MInstance() { Console.WriteLine("B::MInstance"); } 
	public new void MInstance() { Console.WriteLine("B::MInstance"); } // new: para tirar warning do compilador
	//public override void MVirtual() { Console.WriteLine("B::MVirtual"); } 
	//public new void MVirtual() { Console.WriteLine("new B::MVirtual"); } // novo de instancia
	public new virtual void MVirtual() { Console.WriteLine("new virtual B::MVirtual"); }  // novo slot virtual
	//
	public override void MAbstract() { Console.WriteLine("B::MAbstract"); } 
}

class C : B
{
    public override void MVirtual()
    {
        Console.WriteLine("Inside override C::MVirtual");
        Console.WriteLine("Call base method...");
        base.MVirtual();
        Console.WriteLine("override C::MVirtual");
    }
    //public new void MVirtual() { Console.WriteLine("new C::MVirtual"); } 
    //public new virtual void MVirtual() { Console.WriteLine("new virtual C::MVirtual"); } 
}

class Program
{
    public static void Main1()
    {
        // Met. instancia
        Console.WriteLine("Calling B::MInstance");
        B b = new B();
        b.MInstance();
        ((A)b).MInstance();
        A _a = b;
        _a.MInstance();
        Console.WriteLine();

        Console.WriteLine("B Methods");
        Console.WriteLine();
        //Met. virtuais - Estudar resultados das diferentes combinacoes de metodos
        A a = new B();
        a.MVirtual();
        a.MAbstract();
        ((B)a).MVirtual();

        Console.WriteLine();
        Console.WriteLine("C Methods");
        C c = new C();

        Console.WriteLine();
        Console.WriteLine("Calling c.MVirtual()");
        c.MVirtual();
        A aa = c;
        Console.WriteLine();
        Console.WriteLine("Calling aa.MVirtual()");
        aa.MVirtual();

        Console.WriteLine();
        Console.WriteLine("Calling ((A)c).MVirtual()");
        ((A)c).MVirtual(); // <=> aa.MVirtual();

        Console.WriteLine();
        Console.WriteLine("Calling ((B)c).MVirtual()");
        ((B)c).MVirtual();
    }
}
/*
Calling B::MInstance
B::MInstance
A::MInstance
A::MInstance

B Methods

A::MVirtual
B::MAbstract
new virtual B::MVirtual

C Methods

Calling c.MVirtual()
Inside override C::MVirtual
Call base method...
new virtual B::MVirtual
override C::MVirtual

Calling aa.MVirtual()
A::MVirtual

Calling ((A)c).MVirtual()
A::MVirtual

Calling ((B)c).MVirtual()
Inside override C::MVirtual
Call base method...
new virtual B::MVirtual
override C::MVirtual

*/ 












