
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly 'Aula-27'
{
  .hash algorithm 0x00008004
  .ver 1:0:6690:28351
}
.module 'Aula-27.exe'
// MVID: {80FE7E55-3E93-4DB0-85AB-7E20FFEDE3D5}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

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
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
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
  } // end of method Program::Main

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

// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
