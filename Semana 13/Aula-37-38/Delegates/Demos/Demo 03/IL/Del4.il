
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System.Windows.Forms
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly 'Aulas-31-32'
{
  .hash algorithm 0x00008004
  .ver 1:0:6701:29686
}
.module 'Aulas-31-32.exe'
// MVID: {3F0D626F-34F0-4EB0-87B9-7A2F21950F32}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi sealed Del4.Feedback
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method Feedback::.ctor

  .method public hidebysig newslot virtual 
          instance void  Invoke(int32 'value') runtime managed
  {
  } // end of method Feedback::Invoke

  .method public hidebysig newslot virtual 
          instance [mscorlib]System.IAsyncResult 
          BeginInvoke(int32 'value',
                      [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method Feedback::BeginInvoke

  .method public hidebysig newslot virtual 
          instance void  EndInvoke([mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method Feedback::EndInvoke

} // end of class Del4.Feedback

.class public auto ansi sealed beforefieldinit Del4.Program
       extends [mscorlib]System.Object
{
  .field private int32 i

  .method private hidebysig static void  Counter(int32 from,
                                                 int32 'to',
                                                 class Del4.Feedback fb) cil managed
  {
    // Code size       41 (0x29)
    .maxstack  2
    .locals init (bool V_0,
             int32 V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.2
    IL_0002:  ldnull
    IL_0003:  ceq
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  brfalse.s  IL_000b

    IL_0009:  br.s       IL_0028

    IL_000b:  ldarg.0
    IL_000c:  stloc.1
    IL_000d:  br.s       IL_001d

    IL_000f:  nop
    IL_0010:  ldarg.2
    IL_0011:  ldloc.1
    IL_0012:  callvirt   instance void Del4.Feedback::Invoke(int32)
    IL_0017:  nop
    IL_0018:  nop
    IL_0019:  ldloc.1
    IL_001a:  ldc.i4.1
    IL_001b:  add
    IL_001c:  stloc.1
    IL_001d:  ldloc.1
    IL_001e:  ldarg.1
    IL_001f:  cgt
    IL_0021:  ldc.i4.0
    IL_0022:  ceq
    IL_0024:  stloc.2
    IL_0025:  ldloc.2
    IL_0026:  brtrue.s   IL_000f

    IL_0028:  ret
  } // end of method Program::Counter

  .method private hidebysig instance void 
          AnonymousDelegateDemo() cil managed
  {
    // Code size       39 (0x27)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "----- Anonymous Delegate Demo -----"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldc.i4.1
    IL_000d:  ldc.i4.3
    IL_000e:  ldarg.0
    IL_000f:  ldftn      instance void Del4.Program::'<AnonymousDelegateDemo>b__5_0'(int32)
    IL_0015:  newobj     instance void Del4.Feedback::.ctor(object,
                                                            native int)
    IL_001a:  call       void Del4.Program::Counter(int32,
                                                    int32,
                                                    class Del4.Feedback)
    IL_001f:  nop
    IL_0020:  call       void [mscorlib]System.Console::WriteLine()
    IL_0025:  nop
    IL_0026:  ret
  } // end of method Program::AnonymousDelegateDemo

  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       15 (0xf)
    .maxstack  1
    .locals init (class Del4.Program V_0)
    IL_0000:  nop
    IL_0001:  newobj     instance void Del4.Program::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  callvirt   instance void Del4.Program::AnonymousDelegateDemo()
    IL_000d:  nop
    IL_000e:  ret
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

  .method private hidebysig instance void 
          '<AnonymousDelegateDemo>b__5_0'(int32 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       59 (0x3b)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldc.i4.4
    IL_0002:  newarr     [mscorlib]System.Object
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldstr      "i = "
    IL_000e:  stelem.ref
    IL_000f:  dup
    IL_0010:  ldc.i4.1
    IL_0011:  ldarg.0
    IL_0012:  ldfld      int32 Del4.Program::i
    IL_0017:  box        [mscorlib]System.Int32
    IL_001c:  stelem.ref
    IL_001d:  dup
    IL_001e:  ldc.i4.2
    IL_001f:  ldstr      ", Item = "
    IL_0024:  stelem.ref
    IL_0025:  dup
    IL_0026:  ldc.i4.3
    IL_0027:  ldarga.s   'value'
    IL_0029:  call       instance string [mscorlib]System.Int32::ToString()
    IL_002e:  stelem.ref
    IL_002f:  call       string [mscorlib]System.String::Concat(object[])
    IL_0034:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0039:  nop
    IL_003a:  ret
  } // end of method Program::'<AnonymousDelegateDemo>b__5_0'

} // end of class Del4.Program


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
