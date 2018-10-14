using System;

namespace Aulas1011
{
	struct Point {
		public double x, y;
		//		public Point() { } // Error, cannot redefine default constructor 
		// because we could change the default behaviour of initobj (set to zeros)
		// OK, we can add parameter full constructors to value types
		public Point(double x, double y) { 
			this.x = x;
			this.y = y;
		}

	}

	class PointClass {
		public double x, y;
		// No restrictions concerning constructor definition
		// ...
	}

	public class Initobj_and_newobj
	{
		public static void Main()
		{
			// Case 1. Error, read p.x (works on IL though, because use of the 'init' keyword in '.locals ...' initialises to zeros)
//			Point p; // .locals init
//			Console.WriteLine ("p.x = {0}", p.x); // Use of possibly unassigned field 'x'

			// Case 2. OK, calls constructor that emits initobj
			//Point p = new Point(); // See IL 
			//Console.WriteLine ("p.x = {0}", p.x);

			// Case 3. OK, write to p.x and then read
			Point p; // .locals init  --> SEE IL
			p.x = 10;
			Console.WriteLine ("p.x = {0}", p.x);

            //Point p = new Point(2, 3); // See IL 
            //Console.WriteLine("(p.x, p.y) = ({0},{1})", p.x, p.y);
			//////////////////////////////////////////////

   //         PointClass p2 = new PointClass (); // See IL: it generates newobj 
			//Console.WriteLine ("p2.x = {0}", p2.x);


            PointClass p2; // Reference not initialised to object
            p2.x = 10; // Error, unassigned variable
            Console.WriteLine ("p2.x = {0}", p2.x);


		}
	}
}

