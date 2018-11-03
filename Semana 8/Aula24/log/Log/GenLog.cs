using System;
using System.Collections.Generic;
using System.Reflection;
using System.Reflection.Emit;

//
// Author: João Trindade
//
public static class GenLog
{
	private static readonly Dictionary<TypeInfo, ILog> loggers =
		new Dictionary<TypeInfo, ILog>();

	public static ILog For(TypeInfo typeInfo)
	{
		if (!loggers.ContainsKey(typeInfo)) {
			loggers[typeInfo] = GenerateFor(typeInfo);
		}
		return loggers[typeInfo];
	}

	private static ILog GenerateFor(TypeInfo typeInfo)
	{
		string TheName = "LoggerFor" + typeInfo.Name;

		string ASM_NAME = TheName;
		string MOD_NAME = TheName;
		string TYP_NAME = TheName;

        // If using RunAndSave then uncomment
        string DLL_NAME = TheName + ".dll";

		// Define assembly
		AssemblyBuilder asmBuilder =
			AssemblyBuilder.DefineDynamicAssembly(
				new AssemblyName(ASM_NAME),
				//AssemblyBuilderAccess.Run 	// consider using: RunAndSave
                AssemblyBuilderAccess.RunAndSave
			);

		// Define module in assembly
		ModuleBuilder modBuilder =
			//asmBuilder.DefineDynamicModule(MOD_NAME /*, DLL_NAME */);
            // If using RunAndSave then use line below
            asmBuilder.DefineDynamicModule(MOD_NAME, DLL_NAME);
		
		// Define type in module
		TypeBuilder typBuilder = modBuilder.DefineType(TYP_NAME);

		// Make the type implement ILog
		typBuilder.AddInterfaceImplementation(typeof(ILog));

		// The type will have a method Log
		MethodBuilder LogMethodBuilder =
			typBuilder.DefineMethod(
				"Log",
				MethodAttributes.Public  |
				MethodAttributes.Virtual |
				MethodAttributes.ReuseSlot,
				//null,
                // OR
                typeof(void),
				new Type[2] { typeof(object), typeof(int) }
			);
		
		// Generate method Log
		ImplementLogMethod(LogMethodBuilder, typeInfo);

		// Create type 
		Type loggerType = typBuilder.CreateTypeInfo().AsType();

		// Save the assembly
        // If using RunAndSave then uncomment
        asmBuilder.Save(DLL_NAME);

		// Create instance
		ILog logger = (ILog) Activator.CreateInstance(loggerType);

		// Return
		return logger; 
	}
	
	private static void ImplementLogMethod(MethodBuilder metBuilder, TypeInfo typeInfo)
	{
        // TypeInfo class (MSDN):
        // Represents type declarations for class types, interface types, array types, value types, 
        // enumeration types, type parameters, generic type definitions, and open or closed constructed generic types.
        //
        // Starting with the .NET Framework 4.5, the TypeInfo class is included in the .NET for Windows 8.x Store apps 
        // subset for use in creating Windows Store apps. TypeInfo is available in the full .NET Framework as well.
        //
        // TypeInfo contains many of the members available in the Type class, and many of the reflection properties 
        // in the .NET for Windows 8.x Store apps return collections of TypeInfo objects.
        //
        // A TypeInfo object represents the type definition itself, whereas a Type object represents a reference
        // to the type definition. Getting a TypeInfo object forces the assembly that contains that type to load. 
        // In comparison, you can manipulate Type objects without necessarily requiring the runtime to load the 
        // assembly they reference.
        // 
        // In the .NET for Windows 8.x Store apps, you use the reflection properties of TypeInfo that return IEnumerable <T> 
        // collections instead of methods that return arrays. For example, use the DeclaredMembers property to get all 
        // declared members, or the DeclaredProperties property to get all declared properties.
        // Reflection contexts can implement lazy traversal of these collections for large assemblies or types.
        // To get specific members, use methods such as GetDeclaredMethod and GetDeclaredProperty, and pass the name of 
        // the method or property you would like to retrieve.
        //  
        // To filter the results of TypeInfo properties, use LINQ queries.For reflection objects that originate with the 
        // runtime (for example, as the result of typeof(Object)), you can traverse the inheritance tree by using the methods 
        // in the RuntimeReflectionExtensions class. Consumers of objects from customized reflection contexts cannot use 
        // these methods and must traverse the inheritance tree themselves.
        // For more information about "customized reflection contexts" see the CustomReflectionContext Class.

		Type type = typeInfo.AsType();

		ILGenerator il = metBuilder.GetILGenerator();
        // Represents a local variable within a method or constructor.
		LocalBuilder tobj = il.DeclareLocal(type);

		il.Emit(OpCodes.Ldarg_1);
		il.Emit(OpCodes.Castclass, type);
		il.Emit(OpCodes.Stloc, tobj);

		// Console.Write("{0} {{ ", obj.GetType().Name);
		il.Emit(OpCodes.Ldstr, typeInfo.Name + " { ");
		il.Emit(OpCodes.Call,
			typeof(Console).GetTypeInfo().GetMethod(
				"Write",
				new Type[] { typeof(string) }
			)
		);

		foreach (FieldInfo fi in typeInfo.GetFields(LogOps.ALL_INSTANCE)) {
			if (LogOps.CanLog(fi)) {
				Label noLog = il.DefineLabel();
				// if (LogOps.GetLogLevel(fi) <= level)
				int defLevel = LogOps.GetLogLevel(fi);
				if (defLevel > 0) {
					il.Emit(OpCodes.Ldc_I4, defLevel);
					il.Emit(OpCodes.Ldarg_2);
					il.Emit(OpCodes.Cgt);
					il.Emit(OpCodes.Brtrue, noLog);
				}
				// Console.Write("{0}: {1}; ", fi.Name, fi.GetValue(obj));
				il.Emit(OpCodes.Ldstr, fi.Name + ": {0}; ");
				il.Emit(OpCodes.Ldloc, tobj);
				il.Emit(OpCodes.Ldfld, fi);
				if (fi.FieldType.GetTypeInfo().IsValueType) {
					il.Emit(OpCodes.Box, fi.FieldType);
				}
				il.Emit(OpCodes.Call,
					typeof(Console).GetTypeInfo().GetMethod(
						"Write",
						new Type[] { typeof(string), typeof(object) }
					)
				);
				il.MarkLabel(noLog);
			}
		}

		// Console.WriteLine('}');
		il.Emit(OpCodes.Ldc_I4_S, '}');
		il.Emit(OpCodes.Call,
			typeof(Console).GetTypeInfo().GetMethod(
				"WriteLine",
				new Type[] { typeof(char) }
			)
		);

		il.Emit(OpCodes.Ret);
	}
}
