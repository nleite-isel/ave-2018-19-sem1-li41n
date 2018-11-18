using System;
namespace Aula27.VirtualCallproblems
{
    public class VirtualCallRecursive
    {
        public VirtualCallRecursive()
        {
        }

        public override bool Equals(object o) {
            return base.Equals(o);
            // IL code:
            // .method public hidebysig virtual instance bool
            // Equals(object o) cil managed
            // {
            //// Code size       13 (0xd)
            //.maxstack  2
            //.locals init (bool V_0)
            //IL_0000:  nop
            //IL_0001:  ldarg.0
            //IL_0002:  ldarg.1
            //IL_0003:  call instance bool[mscorlib] System.Object::Equals(object)
            //IL_0008:  stloc.0
            //IL_0009:  br.s IL_000b

            //IL_000b:  ldloc.0
            //IL_000c:  ret
            //} // end of method VirtualCallRecursive::Equals


            /// If we change 
            /// IL_0003:  call 
            /// by 
            /// IL_0003:  callvirt
            /// results in infinite loop 
            
        }


        public static void Main1() {
            Console.WriteLine(new VirtualCallRecursive().Equals(new VirtualCallRecursive())); // false, 
            // Equals return object.Equals which compares identity
        }
    }
}
