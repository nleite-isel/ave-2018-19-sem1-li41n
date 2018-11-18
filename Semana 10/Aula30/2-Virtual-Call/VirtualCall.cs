using System;
namespace Aulas2526.VirtualCall
{
    public class C
    {
        public C()
        {
            this.M1(); // non virtual call
        }

        private void M1()
        {
            Console.WriteLine("M1");
        }
        public void M2()
        {
            Console.WriteLine("M2");
            M1(); // non virtual call
        }
    }

    public class VirtualCall
    {
        public static void Main1() {
            //new C().M2(); 
            // IL:
            // IL_0001:  newobj     instance void Aulas2526.VirtualCall.C::.ctor()
            // IL_0006: call instance void Aulas2526.VirtualCall.C::M2()
            C c = new C();
            // callvirt in order to test this different from null
            c.M2(); 
            // IL:
            // IL_0001: newobj instance void Aulas2526.VirtualCall.C::.ctor()
            // IL_0006: stloc.0
            // IL_0007: ldloc.0
            // IL_0008: callvirt instance void Aulas2526.VirtualCall.C::M2()
/*
 * Output (see CIL code)
M1
M2
M1

*/ 
        }

    }
}
