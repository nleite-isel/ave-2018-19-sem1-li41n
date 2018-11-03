
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
.assembly LoggerForUser
{
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module LoggerForUser
// MVID: {29A3FF89-539E-4BE4-814E-D7B5D6C75341}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi LoggerForUser
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
  } // end of method LoggerForUser::.ctor

  .method public virtual instance void  Log(object A_1,
                                            int32 A_2) cil managed
  {
    // Code size       73 (0x49)
    .maxstack  5
    .locals init ([Aula18]User V_0)
    IL_0000:  ldarg.1
    IL_0001:  castclass  [Aula18]User
    IL_0006:  stloc.0
    IL_0007:  ldstr      "User { "
    IL_000c:  call       void [mscorlib]System.Console::Write(string)
    IL_0011:  ldc.i4     0x1
    IL_0016:  ldarg.2
    IL_0017:  cgt
    IL_0019:  brtrue     IL_002e

    IL_001e:  ldstr      "username: {0}; "
    IL_0023:  ldloc.0
    IL_0024:  ldfld      string [Aula18]User::username
    IL_0029:  call       void [mscorlib]System.Console::Write(string,
                                                              object)
    IL_002e:  ldstr      "name: {0}; "
    IL_0033:  ldloc.0
    IL_0034:  ldfld      string [Aula18]User::name
    IL_0039:  call       void [mscorlib]System.Console::Write(string,
                                                              object)
    IL_003e:  ldc.i4.s   125
    IL_0040:  nop
    IL_0041:  nop
    IL_0042:  nop
    IL_0043:  call       void [mscorlib]System.Console::WriteLine(char)
    IL_0048:  ret
  } // end of method LoggerForUser::Log

} // end of class LoggerForUser


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
