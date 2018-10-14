
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly 'Aulas13-14'
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0A 41 75 6C 61 73 31 33 2D 31 34 00 00 )    // ...Aulas13-14..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1C 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 36 2E 31 01   // ,Version=v4.6.1.
                                                                                                        00 54 0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73   // .T..FrameworkDis
                                                                                                        70 6C 61 79 4E 61 6D 65 14 2E 4E 45 54 20 46 72   // playName..NET Fr
                                                                                                        61 6D 65 77 6F 72 6B 20 34 2E 36 2E 31 )          // amework 4.6.1
  .hash algorithm 0x00008004
  .ver 1:0:6651:35961
}
.module 'Aulas13-14.exe'
// MVID: {EAC9B72A-B789-486F-A833-E3A3541909BF}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================


.class public auto ansi sealed beforefieldinit RefOutParameters.Program1
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Swap(string s1,
                                             string s2) cil managed
  {
    // Code size       10 (0xa)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  stloc.0
    IL_0003:  ldarg.1
    IL_0004:  starg.s    s1
    IL_0006:  ldloc.0
    IL_0007:  starg.s    s2
    IL_0009:  ret
  } // end of method Program1::Swap

  .method public hidebysig static void  Swap_ok(string& s1,
                                                string& s2) cil managed
  {
//
// Ver entradas ldind.ref e stind.ref no MSDN  
//
/*
ldind.ref

Loads the object reference at address addr onto the stack as a type O

The stack transitional behavior, in sequential order, is:

An address is pushed onto the stack.

The address is popped from the stack; 
the object reference located at the address is fetched.

The fetched reference is pushed onto the stack.


stind.ref 

Stores an object reference (type O) value at a given address.

The stack transitional behavior, in sequential order, is:

An address is pushed onto the stack.

A value is pushed onto the stack.

The value and the address are popped from the stack; 
the value is stored at the address.
*/
////////////////////////////////////////////////////////
  
    // Code size       12 (0xc)
    .maxstack  2
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0   // coloca no stack arg0 que contem &a1 
    IL_0002:  ldind.ref // retira arg0 do stack e obtem referencia para objeto situado nesse endereco (a1)
    IL_0003:  stloc.0   // guarda referencia para a1 
    IL_0004:  ldarg.0   // coloca no stack arg0 que contem &a1 
    IL_0005:  ldarg.1   // coloca no stack arg1 que contem &a2
    IL_0006:  ldind.ref // retira arg1 do stack e obtem referencia para objeto situado nesse endereco (a2)
    IL_0007:  stind.ref // retira arg0 (&a1) e resultado de ldind.ref (referencia para a2) e coloca 
                        // referencia para a2 no endereco &a1
    IL_0008:  ldarg.1   // vice-versa ...
    IL_0009:  ldloc.0
    IL_000a:  stind.ref
    IL_000b:  ret
  } // end of method Program1::Swap_ok

  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       78 (0x4e)
    .maxstack  4
    .locals init (string V_0,
             string V_1)
    IL_0000:  nop
    IL_0001:  ldstr      "str 1"
    IL_0006:  stloc.0
    IL_0007:  ldstr      "str 2"
    IL_000c:  stloc.1
    IL_000d:  ldloc.0
    IL_000e:  ldloc.1
    IL_000f:  call       void RefOutParameters.Program1::Swap(string,
                                                              string)
    IL_0014:  nop
    IL_0015:  ldstr      "a1 = "
    IL_001a:  ldloc.0
    IL_001b:  ldstr      "; a2 = "
    IL_0020:  ldloc.1
    IL_0021:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    IL_0026:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_002b:  nop
    
//
// DE NOTAR O ldlocA (load local var address)
// 
    
    IL_002c:  ldloca.s   V_0
    IL_002e:  ldloca.s   V_1
    IL_0030:  call       void RefOutParameters.Program1::Swap_ok(string&,
                                                                 string&)
    IL_0035:  nop
    IL_0036:  ldstr      "a1 = "
    IL_003b:  ldloc.0
    IL_003c:  ldstr      "; a2 = "
    IL_0041:  ldloc.1
    IL_0042:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string,
                                                                string)
    IL_0047:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_004c:  nop
    IL_004d:  ret
  } // end of method Program1::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Program1::.ctor

} // end of class RefOutParameters.Program1


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
