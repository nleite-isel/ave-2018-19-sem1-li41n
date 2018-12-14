
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly 'Aula-36'
{
  .hash algorithm 0x00008004
  .ver 1:0:6714:39899
}
.module 'Aula-36.exe'
// MVID: {2DC36E1E-40AA-4EDE-9AAF-262F1B6DBD49}
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
    // Code size       149 (0x95)
    .maxstack  2
    .locals init ([mscorlib]System.Nullable`1<valuetype V> V_0,
             valuetype V V_1,
             object V_2,
             object V_3,
             valuetype V V_4,
             valuetype V V_5,
             [mscorlib]System.Nullable`1<valuetype V> V_6,
             valuetype V V_7)
    IL_0000:  nop
    IL_0001:  ldloca.s   V_0
    IL_0003:  ldloca.s   V_7
    IL_0005:  initobj    V
    IL_000b:  ldloc.s    V_7
    IL_000d:  call       instance void [mscorlib]System.Nullable`1<valuetype V>::.ctor(!0)
    IL_0012:  ldloca.s   V_0
    IL_0014:  call       instance !0 [mscorlib]System.Nullable`1<valuetype V>::get_Value()
    IL_0019:  stloc.1
    IL_001a:  ldloca.s   V_1
    IL_001c:  ldc.i4.s   10
    IL_001e:  stfld      int32 V::val
    IL_0023:  ldloc.0
    IL_0024:  box        [mscorlib]System.Nullable`1<valuetype V>
    IL_0029:  stloc.2
    IL_002a:  ldloc.1
    IL_002b:  box        V
    IL_0030:  stloc.3
    IL_0031:  ldloc.0
    IL_0032:  box        [mscorlib]System.Nullable`1<valuetype V>
    IL_0037:  call       void [mscorlib]System.Console::WriteLine(object)
    IL_003c:  nop
    IL_003d:  ldloc.3
    IL_003e:  call       void [mscorlib]System.Console::WriteLine(object)
    IL_0043:  nop
    IL_0044:  ldloc.3
    IL_0045:  callvirt   instance [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_004a:  call       void [mscorlib]System.Console::WriteLine(object)
    IL_004f:  nop
    IL_0050:  ldloc.3
    IL_0051:  unbox.any  V
    IL_0056:  stloc.s    V_4
    IL_0058:  ldloc.s    V_4
    IL_005a:  ldfld      int32 V::val
    IL_005f:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0064:  nop
    IL_0065:  ldloc.2
    IL_0066:  unbox.any  V
    IL_006b:  stloc.s    V_5
    IL_006d:  ldloc.s    V_5
    IL_006f:  ldfld      int32 V::val
    IL_0074:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0079:  nop
    IL_007a:  ldloc.2
    IL_007b:  unbox.any  [mscorlib]System.Nullable`1<valuetype V>
    IL_0080:  stloc.s    V_6
    IL_0082:  ldloca.s   V_6
    IL_0084:  call       instance !0 [mscorlib]System.Nullable`1<valuetype V>::get_Value()
    IL_0089:  ldfld      int32 V::val
    IL_008e:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0093:  nop
    IL_0094:  ret
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

.data cil I_00003B34 = bytearray (
                 01 00 00 00 02 00 00 00 03 00 00 00 04 00 00 00
                 05 00 00 00) 
.data cil I_00003B4C = bytearray (
                 00 00 00 00 00 00 2A 40 9A 99 99 99 99 99 2C 40  // ......*@......,@
                 33 33 33 33 33 33 29 40 00 00 00 00 00 00 30 40) // 333333)@......0@
.data cil I_00003B6C = bytearray (
                 0C 00 00 00 02 00 00 00 01 00 00 00 03 00 00 00
                 10 00 00 00 09 00 00 00 17 00 00 00) 
// *********** DISASSEMBLY COMPLETE ***********************
