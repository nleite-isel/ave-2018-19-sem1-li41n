using System;

namespace CastingOperators
{
	public class Employee {
		// Non-virtual method
		public void PrintEmployee() {
			Console.WriteLine("Employee");
		}
	}

	public class Manager : Employee {
		// Non-virtual method
		public void PrintManager() {
			Console.WriteLine("Manager");
		}
	}

	public class SalesManager : Manager {
		// Non-virtual method
		public void PrintSalesManager() {
			Console.WriteLine("SalesManager");
		}
	}

	public class Company
	{
		public static void Process(Employee e) {
			if (e is Manager) {
                Manager m = (Manager)e; // Inneficient, as after executing 'is' operator, the 'castclass' is also executed.
				m.PrintManager ();
			}
			// Or (preferred):
			Manager m1 = e as Manager;
			if (m1 != null)
				m1.PrintManager ();

			SalesManager sm = e as SalesManager;
			if (sm != null) {
				sm.PrintSalesManager ();
				sm.PrintManager ();
			}
			e.PrintEmployee ();
			Console.WriteLine ();
		}

		public static void Main1(string[] args)
		{
			// Process employee
			Company.Process (new Employee ());
			// Process manager
			Company.Process (new Manager ());
			// Process sales manager
			Company.Process (new SalesManager ());
		}
	}
}
