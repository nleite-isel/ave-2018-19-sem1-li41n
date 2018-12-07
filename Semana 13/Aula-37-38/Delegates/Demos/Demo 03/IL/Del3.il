
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly 'Aulas-31-32'
{
  .hash algorithm 0x00008004
  .ver 1:0:6700:38698
}
.module 'Aulas-31-32.exe'
// MVID: {F6008582-23F1-4996-9C0D-370B48237026}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi sealed Del3.Feedback
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

} // end of class Del3.Feedback

.class public auto ansi sealed beforefieldinit Del3.Program
       extends [mscorlib]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Del3.Program/'<>c' '<>9'
    .field public static class Del3.Feedback '<>9__1_0'
    .field public static class Del3.Feedback '<>9__1_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // Code size       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Del3.Program/'<>c'::.ctor()
      IL_0005:  stsfld     class Del3.Program/'<>c' Del3.Program/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance void 
            '<AnonymousDelegateDemo>b__1_0'(int32 'value') cil managed
    {
      // Code size       24 (0x18)
      .maxstack  8
      IL_0000:  nop
      IL_0001:  ldstr      "Item = "
      IL_0006:  ldarg.1
      IL_0007:  box        [mscorlib]System.Int32
      IL_000c:  call       string [mscorlib]System.String::Concat(object,
                                                                  object)
      IL_0011:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_0016:  nop
      IL_0017:  ret
    } // end of method '<>c'::'<AnonymousDelegateDemo>b__1_0'

    .method assembly hidebysig instance void 
            '<AnonymousDelegateDemo>b__1_1'(int32 'value') cil managed
    {
      // Code size       23 (0x17)
      .maxstack  8
      IL_0000:  ldstr      "[anonymous1] Item = "
      IL_0005:  ldarg.1
      IL_0006:  box        [mscorlib]System.Int32
      IL_000b:  call       string [mscorlib]System.String::Concat(object,
                                                                  object)
      IL_0010:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_0015:  nop
      IL_0016:  ret
    } // end of method '<>c'::'<AnonymousDelegateDemo>b__1_1'

  } // end of class '<>c'

  .method private hidebysig static void  Counter(int32 from,
                                                 int32 'to',
                                                 class Del3.Feedback fb) cil managed
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
    IL_0012:  callvirt   instance void Del3.Feedback::Invoke(int32)
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

  .method private hidebysig static void  AnonymousDelegateDemo() cil managed
  {
    // Code size       107 (0x6b)
    .maxstack  3
    .locals init (class Del3.Feedback V_0,
             class Del3.Feedback V_1)
    IL_0000:  nop
    IL_0001:  ldstr      "----- Anonymous Delegate Demo -----"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldsfld     class Del3.Feedback Del3.Program/'<>c'::'<>9__1_0'
    IL_0011:  dup
    IL_0012:  brtrue.s   IL_002b

    IL_0014:  pop
    IL_0015:  ldsfld     class Del3.Program/'<>c' Del3.Program/'<>c'::'<>9'
    IL_001a:  ldftn      instance void Del3.Program/'<>c'::'<AnonymousDelegateDemo>b__1_0'(int32)
    IL_0020:  newobj     instance void Del3.Feedback::.ctor(object,
                                                            native int)
    IL_0025:  dup
    IL_0026:  stsfld     class Del3.Feedback Del3.Program/'<>c'::'<>9__1_0'
    IL_002b:  stloc.0
    IL_002c:  ldc.i4.1
    IL_002d:  ldc.i4.3
    IL_002e:  ldloc.0
    IL_002f:  call       void Del3.Program::Counter(int32,
                                                    int32,
                                                    class Del3.Feedback)
    IL_0034:  nop
    IL_0035:  call       void [mscorlib]System.Console::WriteLine()
    IL_003a:  nop
    IL_003b:  ldsfld     class Del3.Feedback Del3.Program/'<>c'::'<>9__1_1'
    IL_0040:  dup
    IL_0041:  brtrue.s   IL_005a

    IL_0043:  pop
    IL_0044:  ldsfld     class Del3.Program/'<>c' Del3.Program/'<>c'::'<>9'
    IL_0049:  ldftn      instance void Del3.Program/'<>c'::'<AnonymousDelegateDemo>b__1_1'(int32)
    IL_004f:  newobj     instance void Del3.Feedback::.ctor(object,
                                                            native int)
    IL_0054:  dup
    IL_0055:  stsfld     class Del3.Feedback Del3.Program/'<>c'::'<>9__1_1'
    IL_005a:  stloc.1
    IL_005b:  ldc.i4.1
    IL_005c:  ldc.i4.3
    IL_005d:  ldloc.1
    IL_005e:  call       void Del3.Program::Counter(int32,
                                                    int32,
                                                    class Del3.Feedback)
    IL_0063:  nop
    IL_0064:  call       void [mscorlib]System.Console::WriteLine()
    IL_0069:  nop
    IL_006a:  ret
  } // end of method Program::AnonymousDelegateDemo

  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  call       void Del3.Program::AnonymousDelegateDemo()
    IL_0006:  nop
    IL_0007:  ret
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

} // end of class Del3.Program


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
