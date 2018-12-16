
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly 'Aulas-31-32'
{
  .hash algorithm 0x00008004
  .ver 1:0:6703:36078
}
.module 'Aulas-31-32.exe'
// MVID: {3E36F4E5-93AB-4690-8DF6-D6770BADAFB8}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi sealed Feedback
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

} // end of class Feedback

.class public auto ansi sealed beforefieldinit Program
       extends [mscorlib]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass1_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 loc
    .field public int32 parameter
    .field public class Program '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass1_0'::.ctor

    .method assembly hidebysig instance void 
            '<AnonymousDelegateDemo>b__0'(int32 'value') cil managed
    {
      // Code size       118 (0x76)
      .maxstack  4
      IL_0000:  nop
      IL_0001:  ldc.i4.4
      IL_0002:  newarr     [mscorlib]System.Object
      IL_0007:  dup
      IL_0008:  ldc.i4.0
      IL_0009:  ldstr      "this.i = "
      IL_000e:  stelem.ref
      IL_000f:  dup
      IL_0010:  ldc.i4.1
      IL_0011:  ldarg.0
      IL_0012:  ldfld      class Program Program/'<>c__DisplayClass1_0'::'<>4__this'
      IL_0017:  ldfld      int32 Program::i
      IL_001c:  box        [mscorlib]System.Int32
      IL_0021:  stelem.ref
      IL_0022:  dup
      IL_0023:  ldc.i4.2
      IL_0024:  ldstr      ", Item = "
      IL_0029:  stelem.ref
      IL_002a:  dup
      IL_002b:  ldc.i4.3
      IL_002c:  ldarga.s   'value'
      IL_002e:  call       instance string [mscorlib]System.Int32::ToString()
      IL_0033:  stelem.ref
      IL_0034:  call       string [mscorlib]System.String::Concat(object[])
      IL_0039:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_003e:  nop
      IL_003f:  ldstr      "loc = "
      IL_0044:  ldarg.0
      IL_0045:  ldfld      int32 Program/'<>c__DisplayClass1_0'::loc
      IL_004a:  box        [mscorlib]System.Int32
      IL_004f:  call       string [mscorlib]System.String::Concat(object,
                                                                  object)
      IL_0054:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_0059:  nop
      IL_005a:  ldstr      "parameter = "
      IL_005f:  ldarg.0
      IL_0060:  ldfld      int32 Program/'<>c__DisplayClass1_0'::parameter
      IL_0065:  box        [mscorlib]System.Int32
      IL_006a:  call       string [mscorlib]System.String::Concat(object,
                                                                  object)
      IL_006f:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_0074:  nop
      IL_0075:  ret
    } // end of method '<>c__DisplayClass1_0'::'<AnonymousDelegateDemo>b__0'

  } // end of class '<>c__DisplayClass1_0'

  .field private int32 i
  .method private hidebysig instance void 
          AnonymousDelegateDemo(int32 parameter) cil managed
  {
    // Code size       67 (0x43)
    .maxstack  4
    .locals init (class Program/'<>c__DisplayClass1_0' V_0)
    IL_0000:  newobj     instance void Program/'<>c__DisplayClass1_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Program Program/'<>c__DisplayClass1_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      int32 Program/'<>c__DisplayClass1_0'::parameter
    IL_0014:  nop
    IL_0015:  ldstr      "----- Anonymous Delegate Demo -----"
    IL_001a:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_001f:  nop
    IL_0020:  ldloc.0
    IL_0021:  ldc.i4.s   10
    IL_0023:  stfld      int32 Program/'<>c__DisplayClass1_0'::loc
    IL_0028:  ldc.i4.1
    IL_0029:  ldc.i4.3
    IL_002a:  ldloc.0
    IL_002b:  ldftn      instance void Program/'<>c__DisplayClass1_0'::'<AnonymousDelegateDemo>b__0'(int32)
    IL_0031:  newobj     instance void Feedback::.ctor(object,
                                                       native int)
    IL_0036:  call       void Program::Counter(int32,
                                               int32,
                                               class Feedback)
    IL_003b:  nop
    IL_003c:  call       void [mscorlib]System.Console::WriteLine()
    IL_0041:  nop
    IL_0042:  ret
  } // end of method Program::AnonymousDelegateDemo

  .method private hidebysig static void  Counter(int32 from,
                                                 int32 'to',
                                                 class Feedback fb) cil managed
  {
    // Code size       39 (0x27)
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

    IL_0009:  br.s       IL_0026

    IL_000b:  ldarg.0
    IL_000c:  stloc.1
    IL_000d:  br.s       IL_001b

    IL_000f:  ldarg.2
    IL_0010:  ldloc.1
    IL_0011:  callvirt   instance void Feedback::Invoke(int32)
    IL_0016:  nop
    IL_0017:  ldloc.1
    IL_0018:  ldc.i4.1
    IL_0019:  add
    IL_001a:  stloc.1
    IL_001b:  ldloc.1
    IL_001c:  ldarg.1
    IL_001d:  cgt
    IL_001f:  ldc.i4.0
    IL_0020:  ceq
    IL_0022:  stloc.2
    IL_0023:  ldloc.2
    IL_0024:  brtrue.s   IL_000f

    IL_0026:  ret
  } // end of method Program::Counter

  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       17 (0x11)
    .maxstack  2
    .locals init (class Program V_0)
    IL_0000:  nop
    IL_0001:  newobj     instance void Program::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.s   99
    IL_000a:  callvirt   instance void Program::AnonymousDelegateDemo(int32)
    IL_000f:  nop
    IL_0010:  ret
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

} // end of class Program


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
