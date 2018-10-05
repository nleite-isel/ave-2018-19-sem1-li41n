using System;

namespace MyEnum
{
	[Flags] // custom attribute
	enum Actions {
		None      = 0,
		Read      = 0x0001,
		Write     = 0x0002,
		ReadWrite = Actions.Read | Actions.Write,
		Delete    = 0x0004,
		Query     = 0x0008,
		Sync      = 0x0010
	}

	public class EnumFlags
	{
		public static void Main1() {
			Actions a = Actions.Read | Actions.Delete; // 0x0005
			Console.WriteLine("Action value = {0}", (int) a);

			Console.WriteLine(a.ToString()); // Read, Delete
			if ((a & Actions.Read) == Actions.Read)
				Console.WriteLine ("Is a Read action");
		}
	}
}

