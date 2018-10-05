
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern Enum
{
  .ver 1:0:6849:34647
}
.assembly extern SomeTypeLibrary
{
  .ver 1:0:6849:34647
}
.assembly 'Aulas10-11'
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0A 41 75 6C 61 73 31 30 2D 31 31 00 00 )    // ...Aulas10-11..
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
  .ver 1:0:6849:34648
}
.module 'Aulas10-11.exe'
// MVID: {61BAC801-96EF-4458-8AD6-AE59723CC913}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

.class private sequential ansi sealed beforefieldinit Aulas1011.Point
       extends [mscorlib]System.ValueType
{
  .field public float64 x
  .field public float64 y
} // end of class Aulas1011.Point

.class private auto ansi beforefieldinit Aulas1011.PointClass
       extends [mscorlib]System.Object
{
  .field public float64 x
  .field public float64 y
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method PointClass::.ctor

} // end of class Aulas1011.PointClass

.class public auto ansi beforefieldinit Aulas1011.Initobj_and_newobj
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main1() cil managed
  {
    // Code size       60 (0x3c)
    .maxstack  2
    .locals init (valuetype Aulas1011.Point V_0,
             class Aulas1011.PointClass V_1)
    IL_0000:  nop
    IL_0001:  ldloca.s   V_0
    IL_0003:  initobj    Aulas1011.Point
    IL_0009:  ldstr      "p.x = {0}"
    IL_000e:  ldloc.0
    IL_000f:  ldfld      float64 Aulas1011.Point::x
    IL_0014:  box        [mscorlib]System.Double
    IL_0019:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_001e:  nop
    IL_001f:  newobj     instance void Aulas1011.PointClass::.ctor()
    IL_0024:  stloc.1
    IL_0025:  ldstr      "p.x = {0}"
    IL_002a:  ldloc.0
    IL_002b:  ldfld      float64 Aulas1011.Point::x
    IL_0030:  box        [mscorlib]System.Double
    IL_0035:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_003a:  nop
    IL_003b:  ret
  } // end of method Initobj_and_newobj::Main1

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Initobj_and_newobj::.ctor

} // end of class Aulas1011.Initobj_and_newobj

.class private auto ansi beforefieldinit MyEnum.MyEnumClient
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main1() cil managed
  {
    // Code size       472 (0x1d8)
    .maxstack  3
    .locals init ([mscorlib]System.Type V_0,
             [Enum]MyEnum.Cores V_1,
             int32 V_2,
             string[] V_3,
             int32 V_4,
             string V_5,
             [mscorlib]System.Collections.IEnumerator V_6,
             object V_7,
             [mscorlib]System.IDisposable V_8,
             [mscorlib]System.Collections.IEnumerator V_9,
             int32 V_10,
             [Enum]MyEnum.Cores V_11)
    IL_0000:  nop
    IL_0001:  ldtoken    [Enum]MyEnum.Cores
    IL_0006:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_000b:  stloc.0
    IL_000c:  ldstr      "{0} info:"
    IL_0011:  ldloc.0
    IL_0012:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0017:  nop
    IL_0018:  ldstr      "Names:"
    IL_001d:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0022:  nop
    IL_0023:  nop
    IL_0024:  ldloc.0
    IL_0025:  call       string[] [mscorlib]System.Enum::GetNames([mscorlib]System.Type)
    IL_002a:  stloc.3
    IL_002b:  ldc.i4.0
    IL_002c:  stloc.s    V_4
    IL_002e:  br.s       IL_004e

    IL_0030:  ldloc.3
    IL_0031:  ldloc.s    V_4
    IL_0033:  ldelem.ref
    IL_0034:  stloc.s    V_5
    IL_0036:  ldloc.s    V_5
    IL_0038:  ldstr      " "
    IL_003d:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0042:  call       void [mscorlib]System.Console::Write(string)
    IL_0047:  nop
    IL_0048:  ldloc.s    V_4
    IL_004a:  ldc.i4.1
    IL_004b:  add
    IL_004c:  stloc.s    V_4
    IL_004e:  ldloc.s    V_4
    IL_0050:  ldloc.3
    IL_0051:  ldlen
    IL_0052:  conv.i4
    IL_0053:  blt.s      IL_0030

    IL_0055:  call       void [mscorlib]System.Console::WriteLine()
    IL_005a:  nop
    IL_005b:  ldstr      "Values:"
    IL_0060:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0065:  nop
    IL_0066:  nop
    IL_0067:  ldloc.0
    IL_0068:  call       [mscorlib]System.Array [mscorlib]System.Enum::GetValues([mscorlib]System.Type)
    IL_006d:  callvirt   instance [mscorlib]System.Collections.IEnumerator [mscorlib]System.Array::GetEnumerator()
    IL_0072:  stloc.s    V_6
    .try
    {
      IL_0074:  br.s       IL_0091

      IL_0076:  ldloc.s    V_6
      IL_0078:  callvirt   instance object [mscorlib]System.Collections.IEnumerator::get_Current()
      IL_007d:  stloc.s    V_7
      IL_007f:  ldloc.s    V_7
      IL_0081:  ldstr      " "
      IL_0086:  call       string [mscorlib]System.String::Concat(object,
                                                                  object)
      IL_008b:  call       void [mscorlib]System.Console::Write(string)
      IL_0090:  nop
      IL_0091:  ldloc.s    V_6
      IL_0093:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_0098:  brtrue.s   IL_0076

      IL_009a:  leave.s    IL_00b2

    }  // end .try
    finally
    {
      IL_009c:  ldloc.s    V_6
      IL_009e:  isinst     [mscorlib]System.IDisposable
      IL_00a3:  stloc.s    V_8
      IL_00a5:  ldloc.s    V_8
      IL_00a7:  brfalse.s  IL_00b1

      IL_00a9:  ldloc.s    V_8
      IL_00ab:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00b0:  nop
      IL_00b1:  endfinally
    }  // end handler
    IL_00b2:  call       void [mscorlib]System.Console::WriteLine()
    IL_00b7:  nop
    IL_00b8:  ldstr      "Values converted to int:"
    IL_00bd:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_00c2:  nop
    IL_00c3:  nop
    IL_00c4:  ldloc.0
    IL_00c5:  call       [mscorlib]System.Array [mscorlib]System.Enum::GetValues([mscorlib]System.Type)
    IL_00ca:  callvirt   instance [mscorlib]System.Collections.IEnumerator [mscorlib]System.Array::GetEnumerator()
    IL_00cf:  stloc.s    V_9
    .try
    {
      IL_00d1:  br.s       IL_00f8

      IL_00d3:  ldloc.s    V_9
      IL_00d5:  callvirt   instance object [mscorlib]System.Collections.IEnumerator::get_Current()
      IL_00da:  unbox.any  [mscorlib]System.Int32
      IL_00df:  stloc.s    V_10
      IL_00e1:  ldloc.s    V_10
      IL_00e3:  box        [mscorlib]System.Int32
      IL_00e8:  ldstr      " "
      IL_00ed:  call       string [mscorlib]System.String::Concat(object,
                                                                  object)
      IL_00f2:  call       void [mscorlib]System.Console::Write(string)
      IL_00f7:  nop
      IL_00f8:  ldloc.s    V_9
      IL_00fa:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_00ff:  brtrue.s   IL_00d3

      IL_0101:  leave.s    IL_0119

    }  // end .try
    finally
    {
      IL_0103:  ldloc.s    V_9
      IL_0105:  isinst     [mscorlib]System.IDisposable
      IL_010a:  stloc.s    V_8
      IL_010c:  ldloc.s    V_8
      IL_010e:  brfalse.s  IL_0118

      IL_0110:  ldloc.s    V_8
      IL_0112:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0117:  nop
      IL_0118:  endfinally
    }  // end handler
    IL_0119:  call       void [mscorlib]System.Console::WriteLine()
    IL_011e:  nop
    IL_011f:  ldstr      "UnderlyingType: {0}"
    IL_0124:  ldloc.0
    IL_0125:  call       [mscorlib]System.Type [mscorlib]System.Enum::GetUnderlyingType([mscorlib]System.Type)
    IL_012a:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_012f:  nop
    IL_0130:  ldc.i4.0
    IL_0131:  stloc.1
    IL_0132:  ldstr      "c.ToString() = {0}"
    IL_0137:  ldloca.s   V_1
    IL_0139:  constrained. [Enum]MyEnum.Cores
    IL_013f:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0144:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0149:  nop
    IL_014a:  ldloc.1
    IL_014b:  stloc.2
    IL_014c:  ldstr      "Enum value converted to int, i = {0}"
    IL_0151:  ldloc.2
    IL_0152:  box        [mscorlib]System.Int32
    IL_0157:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_015c:  nop
    IL_015d:  ldstr      "(c-1).ToString() = {0}"
    IL_0162:  ldloc.1
    IL_0163:  ldc.i4.1
    IL_0164:  sub
    IL_0165:  stloc.s    V_11
    IL_0167:  ldloca.s   V_11
    IL_0169:  constrained. [Enum]MyEnum.Cores
    IL_016f:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0174:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0179:  nop
    IL_017a:  ldstr      "Cores.Azul - Cores.Verde = {0}"
    IL_017f:  ldc.i4.s   -2
    IL_0181:  box        [mscorlib]System.Int32
    IL_0186:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_018b:  nop
    IL_018c:  ldstr      "Cores.Azul + 20 = {0}"
    IL_0191:  ldc.i4.s   20
    IL_0193:  box        [Enum]MyEnum.Cores
    IL_0198:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_019d:  nop
    IL_019e:  ldstr      "Cores.Azul + 20 is defined\? {0}"
    IL_01a3:  ldloc.0
    IL_01a4:  ldc.i4.s   20
    IL_01a6:  box        [Enum]MyEnum.Cores
    IL_01ab:  call       bool [mscorlib]System.Enum::IsDefined([mscorlib]System.Type,
                                                               object)
    IL_01b0:  box        [mscorlib]System.Boolean
    IL_01b5:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_01ba:  nop
    IL_01bb:  ldstr      "Cores.Azul + 1 is defined\? {0}"
    IL_01c0:  ldloc.0
    IL_01c1:  ldc.i4.1
    IL_01c2:  box        [Enum]MyEnum.Cores
    IL_01c7:  call       bool [mscorlib]System.Enum::IsDefined([mscorlib]System.Type,
                                                               object)
    IL_01cc:  box        [mscorlib]System.Boolean
    IL_01d1:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_01d6:  nop
    IL_01d7:  ret
  } // end of method MyEnumClient::Main1

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method MyEnumClient::.ctor

} // end of class MyEnum.MyEnumClient

.class private auto ansi sealed MyEnum.Actions
       extends [mscorlib]System.Enum
{
  .custom instance void [mscorlib]System.FlagsAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype MyEnum.Actions None = int32(0x00000000)
  .field public static literal valuetype MyEnum.Actions Read = int32(0x00000001)
  .field public static literal valuetype MyEnum.Actions Write = int32(0x00000002)
  .field public static literal valuetype MyEnum.Actions ReadWrite = int32(0x00000003)
  .field public static literal valuetype MyEnum.Actions Delete = int32(0x00000004)
  .field public static literal valuetype MyEnum.Actions Query = int32(0x00000008)
  .field public static literal valuetype MyEnum.Actions Sync = int32(0x00000010)
} // end of class MyEnum.Actions

.class public auto ansi beforefieldinit MyEnum.EnumFlags
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main1() cil managed
  {
    // Code size       61 (0x3d)
    .maxstack  2
    .locals init (valuetype MyEnum.Actions V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldc.i4.5
    IL_0002:  stloc.0
    IL_0003:  ldstr      "Action value = {0}"
    IL_0008:  ldloc.0
    IL_0009:  box        [mscorlib]System.Int32
    IL_000e:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0013:  nop
    IL_0014:  ldloca.s   V_0
    IL_0016:  constrained. MyEnum.Actions
    IL_001c:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0021:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0026:  nop
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.1
    IL_0029:  and
    IL_002a:  ldc.i4.1
    IL_002b:  ceq
    IL_002d:  stloc.1
    IL_002e:  ldloc.1
    IL_002f:  brfalse.s  IL_003c

    IL_0031:  ldstr      "Is a Read action"
    IL_0036:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_003b:  nop
    IL_003c:  ret
  } // end of method EnumFlags::Main1

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method EnumFlags::.ctor

} // end of class MyEnum.EnumFlags

.class public auto ansi beforefieldinit Constants.Program
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       120 (0x78)
    .maxstack  2
    .locals init ([SomeTypeLibrary]SomeType V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  nop
    IL_0001:  newobj     instance void [SomeTypeLibrary]SomeType::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.s   11
    IL_0009:  stloc.1
    IL_000a:  ldloc.0
    IL_000b:  ldfld      int32 [SomeTypeLibrary]SomeType::increment
    IL_0010:  stloc.2
    IL_0011:  ldstr      "capacity = {0}"
    IL_0016:  ldloc.1
    IL_0017:  box        [mscorlib]System.Int32
    IL_001c:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0021:  nop
    IL_0022:  ldstr      "increment = {0}"
    IL_0027:  ldloc.2
    IL_0028:  box        [mscorlib]System.Int32
    IL_002d:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0032:  nop
    IL_0033:  ldstr      "t.aluno.Number = {0}"
    IL_0038:  ldloc.0
    IL_0039:  ldfld      [SomeTypeLibrary]Aluno [SomeTypeLibrary]SomeType::aluno
    IL_003e:  callvirt   instance int32 [SomeTypeLibrary]Aluno::get_Number()
    IL_0043:  box        [mscorlib]System.Int32
    IL_0048:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_004d:  nop
    IL_004e:  ldloc.0
    IL_004f:  ldfld      [SomeTypeLibrary]Aluno [SomeTypeLibrary]SomeType::aluno
    IL_0054:  ldc.i4.s   10
    IL_0056:  callvirt   instance void [SomeTypeLibrary]Aluno::set_Number(int32)
    IL_005b:  nop
    IL_005c:  ldstr      "t.aluno.Number = {0}"
    IL_0061:  ldloc.0
    IL_0062:  ldfld      [SomeTypeLibrary]Aluno [SomeTypeLibrary]SomeType::aluno
    IL_0067:  callvirt   instance int32 [SomeTypeLibrary]Aluno::get_Number()
    IL_006c:  box        [mscorlib]System.Int32
    IL_0071:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0076:  nop
    IL_0077:  ret
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

} // end of class Constants.Program


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
