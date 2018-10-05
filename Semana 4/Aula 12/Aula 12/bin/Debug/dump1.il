
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly SomeTypeLibrary
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0F 53 6F 6D 65 54 79 70 65 4C 69 62 72 61   // ...SomeTypeLibra
                                                                                              72 79 00 00 )                                     // ry..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 04 6E 75 6E 6F 00 00 )                      // ...nuno..
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1A 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 35 01 00 54   // ,Version=v4.5..T
                                                                                                        0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C   // ..FrameworkDispl
                                                                                                        61 79 4E 61 6D 65 12 2E 4E 45 54 20 46 72 61 6D   // ayName..NET Fram
                                                                                                        65 77 6F 72 6B 20 34 2E 35 )                      // ework 4.5
  .hash algorithm 0x00008004
  .ver 1:0:6645:37414
}
.module SomeTypeLibrary.dll
// MVID: {7E4CE194-68F6-4D61-97FD-DF54056DD042}
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit Aluno
       extends [mscorlib]System.Object
{
  .field private int32 number
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 nr) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      int32 Aluno::number
    IL_000f:  ret
  } // end of method Aluno::.ctor

  .method public hidebysig specialname instance int32 
          get_Number() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 Aluno::number
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method Aluno::get_Number

  .method public hidebysig specialname instance void 
          set_Number(int32 'value') cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  stfld      int32 Aluno::number
    IL_0008:  ret
  } // end of method Aluno::set_Number

  .property instance int32 Number()
  {
    .get instance int32 Aluno::get_Number()
    .set instance void Aluno::set_Number(int32)
  } // end of property Aluno::Number
} // end of class Aluno

.class public auto ansi beforefieldinit SomeType
       extends [mscorlib]System.Object
{
  .field public static literal int32 capacity = int32(0x0000000B)
  .field public initonly int32 increment
  .field public initonly class Aluno aluno
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   9
    IL_0003:  stfld      int32 SomeType::increment
    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.s   123
    IL_000b:  newobj     instance void Aluno::.ctor(int32)
    IL_0010:  stfld      class Aluno SomeType::aluno
    IL_0015:  ldarg.0
    IL_0016:  call       instance void [mscorlib]System.Object::.ctor()
    IL_001b:  nop
    IL_001c:  nop
    IL_001d:  ldarg.0
    IL_001e:  ldc.i4.s   15
    IL_0020:  stfld      int32 SomeType::increment
    IL_0025:  ret
  } // end of method SomeType::.ctor

} // end of class SomeType


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
