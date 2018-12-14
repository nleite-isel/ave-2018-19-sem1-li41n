
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly 'Aula-36'
{
  .hash algorithm 0x00008004
  .ver 1:0:6714:39693
}
.module 'Aula-36.exe'
// MVID: {7BD506D4-E4F5-4369-AF1C-749C86B3CB55}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

.class private sequential ansi sealed beforefieldinit V
       extends [mscorlib]System.ValueType
{
  .field public int32 val
} // end of class V

.class private auto ansi beforefieldinit Test
       extends [mscorlib]System.Object
{
  .method private hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       36 (0x24)
    .maxstack  1
    .locals init ([mscorlib]System.Nullable`1<valuetype V> V_0,
             object V_1,
             valuetype V V_2)
    IL_0000:  nop
    IL_0001:  ldloca.s   V_0
    IL_0003:  initobj    [mscorlib]System.Nullable`1<valuetype V>
    IL_0009:  ldloc.0
    IL_000a:  box        [mscorlib]System.Nullable`1<valuetype V>
    IL_000f:  stloc.1
    IL_0010:  ldloc.1
    IL_0011:  unbox.any  V
    IL_0016:  stloc.2
    IL_0017:  ldloc.2
    IL_0018:  ldfld      int32 V::val
    IL_001d:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0022:  nop
    IL_0023:  ret
  } // end of method Test::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Test::.ctor

} // end of class Test


// =============================================================

.data cil I_00003A98 = bytearray (
                 01 00 00 00 02 00 00 00 03 00 00 00 04 00 00 00
                 05 00 00 00) 
.data cil I_00003AAC = int8[4]
.data cil I_00003AB0 = bytearray (
                 00 00 00 00 00 00 2A 40 9A 99 99 99 99 99 2C 40  // ......*@......,@
                 33 33 33 33 33 33 29 40 00 00 00 00 00 00 30 40) // 333333)@......0@
.data cil I_00003AD0 = bytearray (
                 0C 00 00 00 02 00 00 00 01 00 00 00 03 00 00 00
                 10 00 00 00 09 00 00 00 17 00 00 00) 
// *********** DISASSEMBLY COMPLETE ***********************
