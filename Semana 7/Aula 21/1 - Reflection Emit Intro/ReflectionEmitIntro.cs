using System;
using System.Reflection;
using System.Reflection.Emit;
using System.Threading;

namespace Aulas1314
{
    // From Shared source CLI book
    class ReflectionEmitIntro
    {
        static void Main()
        {
            AssemblyName asmName = new AssemblyName();
            asmName.Name = "HelloReflectionEmit";
            AppDomain appDom = Thread.GetDomain();
            // Create AssemblyBuilder with "RunAndSave" access
            AssemblyBuilder asmBuilder = appDom.DefineDynamicAssembly(asmName, 
                                            AssemblyBuilderAccess.RunAndSave);
            // Assembly filename
            string filename = asmName.Name + ".exe";
            // Create ModuleBuilder object
            ModuleBuilder modBuilder = asmBuilder.DefineDynamicModule(
                                                    asmName.Name, filename);

            // Define "public class Hello.Emitted"
            //
            TypeBuilder typeBuilder = modBuilder.DefineType("Hello.Emitted", 
                                        TypeAttributes.Public | TypeAttributes.Class);
            // Define "public static int Main(string[] args)"
            //
            MethodBuilder methBuilder = typeBuilder.DefineMethod("Main",
                                                MethodAttributes.Public |
                                                MethodAttributes.Static,
                                                typeof(int),
                                                new Type[] { typeof(string[]) });
            ILGenerator ilGen = methBuilder.GetILGenerator();
            // Define a call to System.Console.WriteLine, passing "Hello World"
            //
            ilGen.Emit(OpCodes.Ldstr, "Hello, World!");
            ilGen.Emit(OpCodes.Call, typeof(Console).GetMethod("WriteLine", 
                                                new Type[] { typeof(string[]) }));
            ilGen.Emit(OpCodes.Ldc_I4_0);
            ilGen.Emit(OpCodes.Ret);
            // Create type
            Type t = typeBuilder.CreateType();
            // Reflect
            ReflectOnAssembly(asmName, asmBuilder);


/*
 * COMMENT/UNCOMMENT SAVE TO EXE
 */
            ///////////////////////////////////////////////////////////////
            // Save to EXE assembly File
            //
            // Set Main as Entry point
            asmBuilder.SetEntryPoint(methBuilder, PEFileKinds.ConsoleApplication);
            // Save assembly to file
            asmBuilder.Save(filename);
            // Execute assembly with name "HelloReflectionEmit.exe"
            appDom.ExecuteAssembly(filename);

            Console.WriteLine("Finished executing {0}", asmName.Name);

            // Load assembly
            LoadAssembly(filename);
            ///////////////////////////////////////////////////////////////
        }

        private static void ReflectOnAssembly(AssemblyName asmName, AssemblyBuilder asmBuilder)
        {
            Console.WriteLine("Now, use reflection on assembly {0}:", asmName.Name);
            foreach (Type type in asmBuilder.GetTypes())
            {
                Console.WriteLine("Type {0}", type);
                foreach (MethodInfo mi in type.GetMethods(BindingFlags.Public
                                                          | BindingFlags.NonPublic
                                                          | BindingFlags.Instance
                                                          | BindingFlags.Static))
                {
                    Console.WriteLine("Method {0}", mi.ToString());
                }
                Console.WriteLine("Invoking Main:");
                MethodInfo mainMethod = asmBuilder.GetType("Hello.Emitted").GetMethod("Main");
                if (mainMethod != null)
                    // First param = this, second param = method parameters
                    mainMethod.Invoke(null, new object[1] { null });
            }
        }

        private static void LoadAssembly(string filename)
        {
            Assembly assembly = Assembly.LoadFrom(filename);
            // Get public and non public types from assembly
            Type[] types = assembly.GetTypes();
            foreach (Type t in types)
            {
                Console.WriteLine(t.Name);
            }
        }
    }
}
