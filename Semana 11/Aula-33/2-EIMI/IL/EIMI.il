
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly 'Aula-27'
{
  .hash algorithm 0x00008004
  .ver 1:0:6690:30816
}
.module 'Aula-27.exe'
// MVID: {CF7B9735-914A-47CB-863D-96E36322444B}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

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
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
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

} // end of class EIMI.Program


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
