
// Loops

.assembly extern mscorlib {}

.assembly Loops
{
    .ver 1:0:1:0
}
.module Loops.exe


// C#
// for(int i = 0; i < 5; ++i)
//    System.Console.WriteLine(i);


.method static void main() cil managed
{
    //Define two local

    .locals init (int32, int32)
    .maxstack 2
    .entrypoint  
	
    ldc.i4 4

    stloc.0        //Upper limit of the Loop, total 5 

    ldc.i4 0 
    stloc.1        //Initialize the Starting of loop 


Start:     
    //Check if the Counter exceeds

    ldloc.1 // i
    ldloc.0 // 4
    bgt Exit //If i > 4, then exit

    
    ldloc.1 // i
    call void [mscorlib]System.Console::WriteLine(int32)
    
    //Increase the Counter

    ldc.i4 1
    ldloc.1 // i
    add
    stloc.1 // i
    br Start
Exit:    
    ret
}
