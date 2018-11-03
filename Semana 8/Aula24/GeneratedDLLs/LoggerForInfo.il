
// Metadata version: v4.0.30319
.assembly extern Aula18
{
  .ver 1:0:6660:30636
}
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly LoggerForInfo
{
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module LoggerForInfo
// MVID: {2485BAC5-CE54-4F57-A2BC-F123373F61E0}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi LoggerForInfo
       extends [mscorlib]System.Object
       implements [Aula18]ILog
{
  .method public specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method LoggerForInfo::.ctor

  .method public virtual instance void  Log(object A_1,
                                            int32 A_2) cil managed
  {
    // Code size       104 (0x68)
    .maxstack  6
    .locals init ([Aula18]Info V_0)
    IL_0000:  ldarg.1
    IL_0001:  castclass  [Aula18]Info
    IL_0006:  stloc.0
    IL_0007:  ldstr      "Info { "
    IL_000c:  call       void [mscorlib]System.Console::Write(string)
    IL_0011:  ldstr      "a: {0}; "
    IL_0016:  ldloc.0
    IL_0017:  ldfld      int32 [Aula18]Info::a
    IL_001c:  box        [mscorlib]System.Int32
    IL_0021:  call       void [mscorlib]System.Console::Write(string,
                                                              object)
    IL_0026:  ldstr      "b: {0}; "
    IL_002b:  ldloc.0
    IL_002c:  ldfld      int32 [Aula18]Info::b
    IL_0031:  box        [mscorlib]System.Int32
    IL_0036:  call       void [mscorlib]System.Console::Write(string,
                                                              object)
    IL_003b:  ldc.i4     0x3
    IL_0040:  ldarg.2
    IL_0041:  cgt
    IL_0043:  brtrue     IL_005d

    IL_0048:  ldstr      "c: {0}; "
    IL_004d:  ldloc.0
    IL_004e:  ldfld      int32 [Aula18]Info::c
    IL_0053:  box        [mscorlib]System.Int32
    IL_0058:  call       void [mscorlib]System.Console::Write(string,
                                                              object)
    IL_005d:  ldc.i4.s   125
    IL_005f:  nop
    IL_0060:  nop
    IL_0061:  nop
    IL_0062:  call       void [mscorlib]System.Console::WriteLine(char)
    IL_0067:  ret
  } // end of method LoggerForInfo::Log

} // end of class LoggerForInfo


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
