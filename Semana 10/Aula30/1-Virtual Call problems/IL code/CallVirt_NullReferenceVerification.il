
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly 'Aula-27'
{
  .hash algorithm 0x00008004
  .ver 1:0:6689:29338
}
.module 'Aula-27.exe'
// MVID: {F89896EA-852B-4DCA-AD23-ED4BCEFE9E26}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit Aula27.VirtualCallproblems.VirtualCallRecursive
       extends [mscorlib]System.Object
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0008:  ret
  } // end of method VirtualCallRecursive::.ctor

  .method public hidebysig virtual instance bool 
          Equals(object o) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop
    
    ldstr "VirtualCallRecursive::"
    call       void [mscorlib]System.Console::WriteLine(string)
    
    IL_0001:  ldarg.0 // This
    IL_0002:  ldarg.1 // object o
    IL_0003:  call       instance bool [mscorlib]System.Object::Equals(object)
    IL_0008:  stloc.0
    
    /// TEST 2 e 4
    // this.ToString() 
    ldarg.0
    call       instance string [mscorlib]System.Object::ToString()
    pop
    ///

    IL_000b:  ldloc.0
    IL_000c:  ret
  } // end of method VirtualCallRecursive::Equals

  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       23 (0x17)
    .maxstack  8

/*
    /// TEST 1
    newobj     instance void Aula27.VirtualCallproblems.VirtualCallRecursive::.ctor()
    newobj     instance void Aula27.VirtualCallproblems.VirtualCallRecursive::.ctor()
    //callvirt   instance bool [mscorlib]System.Object::Equals(object)
    callvirt   instance bool Aula27.VirtualCallproblems.VirtualCallRecursive::Equals(object)
    call       void [mscorlib]System.Console::WriteLine(bool)
    ret
//Output:
//VirtualCallRecursive::
//False
    ///
*/


    /// TEST 2
    ldnull // this
    ldnull // parameter
    // Usando call, o despacho e sempre estatico e nao verifica se this e null
    call instance bool Aula27.VirtualCallproblems.VirtualCallRecursive::Equals(object)
    call       void [mscorlib]System.Console::WriteLine(bool)
    ret
//Output:
//VirtualCallRecursive::
//True
    ///


/*
    /// TEST 3
    ldnull // this
    ldnull // parameter
    // Usando call, o despacho e sempre estatico e nao verifica se this e null
    // Chamando Object::Equals
    call instance bool [mscorlib]System.Object::Equals(object)
    call       void [mscorlib]System.Console::WriteLine(bool)
    ret
//Output:
//True  // null == null
    ///
*/


/*
    /// TEST 4
    ldnull // this
    newobj     instance void Aula27.VirtualCallproblems.VirtualCallRecursive::.ctor() // parameter
    // Usando call, o despacho e sempre estatico e nao verifica se this e null
    call instance bool Aula27.VirtualCallproblems.VirtualCallRecursive::Equals(object)
    call       void [mscorlib]System.Console::WriteLine(bool)
    ret
//Output:
//VirtualCallRecursive::
//False // null != new object
//Se tentar usar this e' lancada excecao (Descomentar codigo dentro do Equals que imprime valor do this)
    ///
*/

/*
    /// TEST 5
    ldnull // this
    newobj     instance void Aula27.VirtualCallproblems.VirtualCallRecursive::.ctor() // parameter
    // Usando call, o despacho e sempre estatico e nao verifica se this e null. 
    // Usando callvirt, this == null e' verificado
    callvirt instance bool Aula27.VirtualCallproblems.VirtualCallRecursive::Equals(object)
    call       void [mscorlib]System.Console::WriteLine(bool)
    ret

// e' lancada excecao mesmo que nao use o this
    ///
*/

  } // end of method VirtualCallRecursive::Main

} // end of class Aula27.VirtualCallproblems.VirtualCallRecursive
















