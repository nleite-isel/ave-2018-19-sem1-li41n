
// Metadata version: v4.0.30319
.assembly extern Ponto
{
  .ver 0:0:0:0
}
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly TestPonto
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module TestPonto.exe
// MVID: {00169157-E300-4494-92C8-3109493D69D7}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Program::.ctor

  .method private hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       83 (0x53)
    .maxstack  2
    .locals init (class [Ponto]Ponto V_0)
    IL_0000:  ldc.i4.5
    IL_0001:  ldc.i4.7
    IL_0002:  newobj     instance void [Ponto]Ponto::.ctor(int32,
                                                           int32)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  callvirt   instance void [Ponto]Ponto::Print()
    IL_000e:  ldstr      "Modulo = "
    IL_0013:  ldloc.0
    IL_0014:  callvirt   instance float64 [Ponto]Ponto::GetModule()
    IL_0019:  box        [mscorlib]System.Double
    IL_001e:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_0023:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0028:  ldstr      "x = {0}"
    IL_002d:  ldloc.0
    IL_002e:  ldfld      int32 [Ponto]Ponto::_x
    IL_0033:  box        [mscorlib]System.Int32
    IL_0038:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_003d:  ldstr      "y = {0}"
    IL_0042:  ldloc.0
    IL_0043:  ldfld      int32 [Ponto]Ponto::_y
    IL_0048:  box        [mscorlib]System.Int32
    IL_004d:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0052:  ret
  } // end of method Program::Main

} // end of class Program


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
