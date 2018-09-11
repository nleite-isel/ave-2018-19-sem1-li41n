
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly Point
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module Point.dll
// MVID: {CBDC2AAA-7AF6-488A-A169-99D11173CC1D}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit Point
       extends [mscorlib]System.Object
{
  .field public int32 x
  .field public int32 y
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 x,
                               int32 y) cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 Point::x
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      int32 Point::y
    IL_0014:  ret
  } // end of method Point::.ctor

  .method public hidebysig instance float64 
          GetModule() cil managed
  {
    // Code size       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Point::x
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Point::x
    IL_000c:  mul
    IL_000d:  ldarg.0
    IL_000e:  ldfld      int32 Point::y
    IL_0013:  ldarg.0
    IL_0014:  ldfld      int32 Point::y
    IL_0019:  mul
    IL_001a:  add
    IL_001b:  conv.r8
    IL_001c:  call       float64 [mscorlib]System.Math::Sqrt(float64)
    IL_0021:  ret
  } // end of method Point::GetModule

  .method public hidebysig instance void 
          Print() cil managed
  {
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  ldstr      "({0}, {1})"
    IL_0005:  ldarg.0
    IL_0006:  ldfld      int32 Point::x
    IL_000b:  box        [mscorlib]System.Int32
    IL_0010:  ldarg.0
    IL_0011:  ldfld      int32 Point::y
    IL_0016:  box        [mscorlib]System.Int32
    IL_001b:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object,
                                                                  object)
    IL_0020:  ret
  } // end of method Point::Print

} // end of class Point


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
