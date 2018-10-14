
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.0.30319.1
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly RefAndOut
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module RefAndOut.exe
// MVID: {482ABBB1-6D3F-40AF-B747-2A192245A99E}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x002F0000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit C
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  GetVal([out] int32& v) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.s   10
    IL_0004:  stind.i4
    IL_0005:  ldarg.0
    IL_0006:  ldind.i4
    IL_0007:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method C::GetVal

  .method public hidebysig static void  AddVal(int32& v) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  dup
    IL_0003:  ldind.i4
    IL_0004:  ldc.i4.2
    IL_0005:  add
    IL_0006:  stind.i4
    IL_0007:  ret
  } // end of method C::AddVal

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method C::.ctor

} // end of class C

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       32 (0x20)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
	
	
	//
	// CLR não distingue entre ref e out
	//
	ldloca.s   V_0
	// Pode-se chamar primeiro o AddVal que tem um parametro de saida
	// mesmo sem inicializar a variavel. De facto, a variavel (tipo/valor)
	// esta iniciada a zero
    call       void C::AddVal(int32&)
	ldloc.0
	call       void [mscorlib]System.Console::WriteLine(int32)
		
	
    IL_0001:  ldloca.s   V_0
    IL_0003:  call       void C::GetVal(int32&)
    IL_0008:  nop
    IL_0009:  ldloc.0
    IL_000a:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_000f:  nop
    IL_0010:  ldloca.s   V_0
    IL_0012:  call       void C::AddVal(int32&)
    IL_0017:  nop
    IL_0018:  ldloc.0
    IL_0019:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_001e:  nop
    IL_001f:  ret
  } // end of method Program::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Program::.ctor

} // end of class Program


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
