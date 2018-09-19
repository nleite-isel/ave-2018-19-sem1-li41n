.class private auto Program extends [mscorlib]System.Object {

.method public hidebysig static int32 func(int32 i) cil managed {
	ldarg.0
	ldc.i4.s 10
	bge IL_0007
	ldc.i4.1
	ret
IL_0007:
	ldc.i4.1
	ldarg.0
	ldc.i4.s 10
	div
	call int32 Program::func(int32)
	add
	ret
} // end of method Program::func

.method private hidebysig static void Main(string[] args) cil managed {
	ldc.i4 	43
	call int32 Program::func(int32)
	call void [mscorlib]System.Console::WriteLine(int32)
	ret
} // end of method Program::Main

} // end of class Program
