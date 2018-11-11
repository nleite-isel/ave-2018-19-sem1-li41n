
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly 'Aula-27'
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 07 41 75 6C 61 2D 32 37 00 00 )             // ...Aula-27..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1C 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 36 2E 31 01   // ,Version=v4.6.1.
                                                                                                        00 54 0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73   // .T..FrameworkDis
                                                                                                        70 6C 61 79 4E 61 6D 65 14 2E 4E 45 54 20 46 72   // playName..NET Fr
                                                                                                        61 6D 65 77 6F 72 6B 20 34 2E 36 2E 31 )          // amework 4.6.1
  .hash algorithm 0x00008004
  .ver 1:0:6689:29338
}
.module 'Aula-27.exe'
// MVID: {F89896EA-852B-4DCA-AD23-ED4BCEFE9E26}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit Aula27.VirtualCallproblems.VirtualCallRecursive
       extends [mscorlib]System.Object
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ret
  } // end of method VirtualCallRecursive::.ctor

  .method public hidebysig virtual instance bool 
          Equals(object o) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1

//    IL_0003:  call       instance bool [mscorlib]System.Object::Equals(object)
    IL_0003:  callvirt       instance bool [mscorlib]System.Object::Equals(object)

    IL_0008:  stloc.0
    IL_0009:  br.s       IL_000b

    IL_000b:  ldloc.0
    IL_000c:  ret
  } // end of method VirtualCallRecursive::Equals

  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       23 (0x17)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void Aula27.VirtualCallproblems.VirtualCallRecursive::.ctor()
    IL_0006:  newobj     instance void Aula27.VirtualCallproblems.VirtualCallRecursive::.ctor()
    IL_000b:  callvirt   instance bool [mscorlib]System.Object::Equals(object)
    IL_0010:  call       void [mscorlib]System.Console::WriteLine(bool)
    IL_0015:  nop
    IL_0016:  ret
  } // end of method VirtualCallRecursive::Main

} // end of class Aula27.VirtualCallproblems.VirtualCallRecursive

.class interface private abstract auto ansi MyInterfaces.I
{
  .method public hidebysig newslot abstract virtual 
          instance void  M() cil managed
  {
  } // end of method I::M

} // end of class MyInterfaces.I

.class public auto ansi beforefieldinit MyInterfaces.A
       extends [mscorlib]System.Object
       implements MyInterfaces.I
{
  .method public hidebysig newslot virtual final 
          instance void  M() cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "A:M"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method A::M

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method A::.ctor

} // end of class MyInterfaces.A

.class public auto ansi beforefieldinit MyInterfaces.B
       extends MyInterfaces.A
       implements MyInterfaces.I
{
  .method public hidebysig newslot virtual final 
          instance void  M() cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "B:M"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method B::M

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void MyInterfaces.A::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method B::.ctor

} // end of class MyInterfaces.B

.class public auto ansi sealed beforefieldinit MyInterfaces.Program
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main1() cil managed
  {
    // Code size       43 (0x2b)
    .maxstack  1
    .locals init (class MyInterfaces.I V_0,
             class MyInterfaces.A V_1,
             class MyInterfaces.B V_2)
    IL_0000:  nop
    IL_0001:  newobj     instance void MyInterfaces.B::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  callvirt   instance void MyInterfaces.I::M()
    IL_000d:  nop
    IL_000e:  ldloc.0
    IL_000f:  castclass  MyInterfaces.A
    IL_0014:  stloc.1
    IL_0015:  ldloc.1
    IL_0016:  callvirt   instance void MyInterfaces.A::M()
    IL_001b:  nop
    IL_001c:  ldloc.0
    IL_001d:  castclass  MyInterfaces.B
    IL_0022:  stloc.2
    IL_0023:  ldloc.2
    IL_0024:  callvirt   instance void MyInterfaces.B::M()
    IL_0029:  nop
    IL_002a:  ret
  } // end of method Program::Main1

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Program::.ctor

} // end of class MyInterfaces.Program

.class interface private abstract auto ansi EIMI2.I1
{
  .method public hidebysig newslot abstract virtual 
          instance void  M0() cil managed
  {
  } // end of method I1::M0

} // end of class EIMI2.I1

.class interface private abstract auto ansi EIMI2.I2
       implements EIMI2.I1
{
  .method public hidebysig newslot abstract virtual 
          instance void  M0() cil managed
  {
  } // end of method I2::M0

  .method public hidebysig newslot abstract virtual 
          instance int32  M1() cil managed
  {
  } // end of method I2::M1

} // end of class EIMI2.I2

.class interface private abstract auto ansi EIMI2.I3
       implements EIMI2.I1
{
  .custom instance void [mscorlib]System.Reflection.DefaultMemberAttribute::.ctor(string) = ( 01 00 04 49 74 65 6D 00 00 )                      // ...Item..
  .method public hidebysig newslot abstract virtual 
          instance void  M1() cil managed
  {
  } // end of method I3::M1

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_P() cil managed
  {
  } // end of method I3::get_P

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_Item(int32 i) cil managed
  {
  } // end of method I3::get_Item

  .property instance int32 P()
  {
    .get instance int32 EIMI2.I3::get_P()
  } // end of property I3::P
  .property instance int32 Item(int32)
  {
    .get instance int32 EIMI2.I3::get_Item(int32)
  } // end of property I3::Item
} // end of class EIMI2.I3

.class private auto ansi beforefieldinit EIMI2.C
       extends [mscorlib]System.Object
       implements EIMI2.I1,
                  EIMI2.I2,
                  EIMI2.I3
{
  .method public hidebysig instance void 
          M0() cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "C.M0 "
    IL_0006:  call       void [mscorlib]System.Console::Write(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method C::M0

  .method private hidebysig newslot virtual final 
          instance void  EIMI2.I1.M0() cil managed
  {
    .override EIMI2.I1::M0
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "C:I1.M0 "
    IL_0006:  call       void [mscorlib]System.Console::Write(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method C::EIMI2.I1.M0

  .method private hidebysig newslot virtual final 
          instance void  EIMI2.I2.M0() cil managed
  {
    .override EIMI2.I2::M0
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "C:I2.M0 "
    IL_0006:  call       void [mscorlib]System.Console::Write(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method C::EIMI2.I2.M0

  .method private hidebysig newslot virtual final 
          instance int32  EIMI2.I2.M1() cil managed
  {
    .override EIMI2.I2::M1
    // Code size       18 (0x12)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "C:I2.M1 "
    IL_0006:  call       void [mscorlib]System.Console::Write(string)
    IL_000b:  nop
    IL_000c:  ldc.i4.1
    IL_000d:  stloc.0
    IL_000e:  br.s       IL_0010

    IL_0010:  ldloc.0
    IL_0011:  ret
  } // end of method C::EIMI2.I2.M1

  .method private hidebysig newslot virtual final 
          instance void  EIMI2.I3.M1() cil managed
  {
    .override EIMI2.I3::M1
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "C:I3.M1 "
    IL_0006:  call       void [mscorlib]System.Console::Write(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method C::EIMI2.I3.M1

  .method private hidebysig newslot specialname virtual final 
          instance int32  EIMI2.I3.get_P() cil managed
  {
    .override EIMI2.I3::get_P
    // Code size       8 (0x8)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.s   11
    IL_0003:  stloc.0
    IL_0004:  br.s       IL_0006

    IL_0006:  ldloc.0
    IL_0007:  ret
  } // end of method C::EIMI2.I3.get_P

  .method private hidebysig newslot specialname virtual final 
          instance int32  EIMI2.I3.get_Item(int32 i) cil managed
  {
    .override EIMI2.I3::get_Item
    // Code size       14 (0xe)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldarg.0
    IL_0003:  callvirt   instance int32 EIMI2.I3::get_P()
    IL_0008:  add
    IL_0009:  stloc.0
    IL_000a:  br.s       IL_000c

    IL_000c:  ldloc.0
    IL_000d:  ret
  } // end of method C::EIMI2.I3.get_Item

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method C::.ctor

  .property instance int32 EIMI2.I3.P()
  {
    .get instance int32 EIMI2.C::EIMI2.I3.get_P()
  } // end of property C::EIMI2.I3.P
  .property instance int32 EIMI2.I3.Item(int32)
  {
    .get instance int32 EIMI2.C::EIMI2.I3.get_Item(int32)
  } // end of property C::EIMI2.I3.Item
} // end of class EIMI2.C

.class private auto ansi beforefieldinit EIMI2.D
       extends EIMI2.C
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void EIMI2.C::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method D::.ctor

} // end of class EIMI2.D

.class private auto ansi beforefieldinit EIMI2.MyTest
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main1(string[] args) cil managed
  {
    // Code size       126 (0x7e)
    .maxstack  2
    .locals init (class EIMI2.C V_0,
             class EIMI2.D V_1)
    IL_0000:  nop
    IL_0001:  newobj     instance void EIMI2.C::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  callvirt   instance void EIMI2.C::M0()
    IL_000d:  nop
    IL_000e:  ldloc.0
    IL_000f:  callvirt   instance void EIMI2.I1::M0()
    IL_0014:  nop
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance void EIMI2.I2::M0()
    IL_001b:  nop
    IL_001c:  ldloc.0
    IL_001d:  callvirt   instance int32 EIMI2.I2::M1()
    IL_0022:  pop
    IL_0023:  ldloc.0
    IL_0024:  callvirt   instance void EIMI2.I3::M1()
    IL_0029:  nop
    IL_002a:  call       void [mscorlib]System.Console::WriteLine()
    IL_002f:  nop
    IL_0030:  ldstr      "Indexer"
    IL_0035:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_003a:  nop
    IL_003b:  ldloc.0
    IL_003c:  ldc.i4.0
    IL_003d:  callvirt   instance int32 EIMI2.I3::get_Item(int32)
    IL_0042:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0047:  nop
    IL_0048:  call       void [mscorlib]System.Console::WriteLine()
    IL_004d:  nop
    IL_004e:  newobj     instance void EIMI2.D::.ctor()
    IL_0053:  stloc.1
    IL_0054:  ldloc.1
    IL_0055:  callvirt   instance void EIMI2.C::M0()
    IL_005a:  nop
    IL_005b:  ldloc.1
    IL_005c:  callvirt   instance void EIMI2.I1::M0()
    IL_0061:  nop
    IL_0062:  ldloc.1
    IL_0063:  callvirt   instance void EIMI2.I2::M0()
    IL_0068:  nop
    IL_0069:  ldloc.1
    IL_006a:  callvirt   instance int32 EIMI2.I2::M1()
    IL_006f:  pop
    IL_0070:  ldloc.1
    IL_0071:  callvirt   instance void EIMI2.I3::M1()
    IL_0076:  nop
    IL_0077:  call       void [mscorlib]System.Console::WriteLine()
    IL_007c:  nop
    IL_007d:  ret
  } // end of method MyTest::Main1

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method MyTest::.ctor

} // end of class EIMI2.MyTest

.class interface private abstract auto ansi EIMI.IStorable
{
  .method public hidebysig newslot abstract virtual 
          instance void  Write() cil managed
  {
  } // end of method IStorable::Write

  .method public hidebysig newslot abstract virtual 
          instance void  Read() cil managed
  {
  } // end of method IStorable::Read

} // end of class EIMI.IStorable

.class interface private abstract auto ansi EIMI.ITalk
{
  .method public hidebysig newslot abstract virtual 
          instance void  Talk() cil managed
  {
  } // end of method ITalk::Talk

  .method public hidebysig newslot abstract virtual 
          instance void  Read() cil managed
  {
  } // end of method ITalk::Read

} // end of class EIMI.ITalk

.class public auto ansi beforefieldinit EIMI.Document
       extends [mscorlib]System.Object
       implements EIMI.IStorable,
                  EIMI.ITalk
{
  .method public hidebysig newslot virtual 
          instance void  Read() cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Document::Read"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method Document::Read

  .method public hidebysig newslot virtual final 
          instance void  Write() cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Document::Write"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method Document::Write

  .method private hidebysig newslot virtual final 
          instance void  EIMI.ITalk.Read() cil managed
  {
    .override EIMI.ITalk::Read
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "ITalk::Read"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method Document::EIMI.ITalk.Read

  .method public hidebysig newslot virtual final 
          instance void  Talk() cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Document::Talk"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method Document::Talk

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Document::.ctor

} // end of class EIMI.Document

.class public auto ansi sealed beforefieldinit EIMI.Program
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main1() cil managed
  {
    // Code size       40 (0x28)
    .maxstack  1
    .locals init (class EIMI.Document V_0,
             class EIMI.IStorable V_1,
             class EIMI.ITalk V_2)
    IL_0000:  nop
    IL_0001:  newobj     instance void EIMI.Document::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  callvirt   instance void EIMI.Document::Read()
    IL_000d:  nop
    IL_000e:  ldloc.0
    IL_000f:  callvirt   instance void EIMI.Document::Talk()
    IL_0014:  nop
    IL_0015:  ldloc.0
    IL_0016:  stloc.1
    IL_0017:  ldloc.1
    IL_0018:  callvirt   instance void EIMI.IStorable::Read()
    IL_001d:  nop
    IL_001e:  ldloc.0
    IL_001f:  stloc.2
    IL_0020:  ldloc.2
    IL_0021:  callvirt   instance void EIMI.ITalk::Read()
    IL_0026:  nop
    IL_0027:  ret
  } // end of method Program::Main1

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Program::.ctor

} // end of class EIMI.Program


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
