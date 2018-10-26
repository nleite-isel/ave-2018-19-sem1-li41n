
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly HelloReflectionEmit
{
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module HelloReflectionEmit
// MVID: {8EABEF07-9834-4586-BADF-E248FEB00735}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi Hello.Emitted
       extends [mscorlib]System.Object
{
  .method public specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Emitted::.ctor

  .method public static int32  Main(string[] A_0) cil managed
  {
    .entrypoint
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldstr      "Hello, World!"
    IL_0005:  call       void [mscorlib]System.Console::WriteLine(object)
    IL_000a:  ldc.i4.0
    IL_000b:  ret
  } // end of method Emitted::Main

} // end of class Hello.Emitted


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
