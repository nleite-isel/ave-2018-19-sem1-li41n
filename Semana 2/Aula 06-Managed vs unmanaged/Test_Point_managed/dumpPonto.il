
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly Ponto
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module Ponto.dll
// MVID: {171A5402-08CA-4B79-BEEA-A9DE436704E2}
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit Ponto
       extends [mscorlib]System.Object
{
  .field public int32 _w
  .field public int32 _x
  .field public int32 _y
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 x,
                               int32 y) cil managed
  {
    // Code size       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      int32 Ponto::_x
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      int32 Ponto::_y
    IL_0016:  ret
  } // end of method Ponto::.ctor

  .method public hidebysig instance float64 
          GetModule() cil managed
  {
    // Code size       39 (0x27)
    .maxstack  3
    .locals init (float64 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 Ponto::_x
    IL_0007:  ldarg.0
    IL_0008:  ldfld      int32 Ponto::_x
    IL_000d:  mul
    IL_000e:  ldarg.0
    IL_000f:  ldfld      int32 Ponto::_y
    IL_0014:  ldarg.0
    IL_0015:  ldfld      int32 Ponto::_y
    IL_001a:  mul
    IL_001b:  add
    IL_001c:  conv.r8
    IL_001d:  call       float64 [mscorlib]System.Math::Sqrt(float64)
    IL_0022:  stloc.0
    IL_0023:  br.s       IL_0025

    IL_0025:  ldloc.0
    IL_0026:  ret
  } // end of method Ponto::GetModule

  .method public hidebysig instance void 
          Print() cil managed
  {
    // Code size       35 (0x23)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "({0}, {1})"
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Ponto::_x
    IL_000c:  box        [mscorlib]System.Int32
    IL_0011:  ldarg.0
    IL_0012:  ldfld      int32 Ponto::_y
    IL_0017:  box        [mscorlib]System.Int32
    IL_001c:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object,
                                                                  object)
    IL_0021:  nop
    IL_0022:  ret
  } // end of method Ponto::Print

} // end of class Ponto


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
