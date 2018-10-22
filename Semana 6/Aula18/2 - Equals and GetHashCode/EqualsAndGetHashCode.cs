using System;
using System.Collections.Generic;
using System.Text;

namespace EqualsAndGetHashCode
{
    class Point
    {
        // Implementation 1-3 
        private int x, y;

        // Implementation 4. 
        //private readonly int x, y;

		public Point(int x, int y) { this.x = x; this.y = y; }
		
        // Implementation 4. Comment Setters
        // Avoid set methods that change fields compared in Equals
        public void SetX(int x) {
            this.x = x;
        }
        public void SetY(int y)
        {
            this.y = y;
        }

        public override bool Equals(object obj)
        {
            if (obj == null) return false;
            if (Object.ReferenceEquals(this, obj)) 
                return true;

            if (this.GetType() == obj.GetType()) // OK, Test exact type
            {
                Point p = (Point)obj;
                return x == p.x && y == p.y;
            }
            return false;
        }

        public override int GetHashCode()
        {
            // 1.
            //return base.GetHashCode(); // Default Object implementation, gets an unique ID. 
            // Works if we change the fields of the object (while the object is in an hash container). 
            // We should, however, use readonly fields
            //
            // 2.
            //return x.GetHashCode() ^ y.GetHashCode();  // Two objects (1,2) and (2,1) are different but have the same hash code
            // 3.
            return x.GetHashCode() * 17 + y.GetHashCode() * 23; // Use prime numbers in order to get a unique hash code (most of times)
        }
        public override string ToString()
        {
            return string.Format("({0},{1})", x, y);
        }
    }


    class Program
    {
        static void Main(string[] args)
        {
			Point p1 = new Point(1, 2);
            Point p2 = new Point(2, 1);

            Console.WriteLine("p1 = {0}", p1);
            Console.WriteLine("p2 = {0}", p2);
            Console.WriteLine("p1.GetHashCode() = {0}", p1.GetHashCode());
            Console.WriteLine("p2.GetHashCode() = {0}", p2.GetHashCode());
            Console.WriteLine("p1.Equals(p2) ? {0}", p1.Equals(p2));

            HashSet<Point> pointHashSet = new HashSet<Point>();

            pointHashSet.Add(p1);
            pointHashSet.Add(p2);

            // Results
            Console.WriteLine("pointHashSet.Contains(p1) = {0}", pointHashSet.Contains(p1));
            // Implementation 4. Comment Setters
            p1.SetX(10); // Fields of objects in hash collections should be immutable
            Console.WriteLine("pointHashSet.Contains(p1 = {0}", pointHashSet.Contains(p1));

            Console.WriteLine("pointHashSet.Remove(p1) -> {0}", pointHashSet.Remove(p1));
            // Implementation 4. Comment Setters
            p1.SetX(2); // Fields of objects in hash collections should be immutable
            p1.SetY(1);
            Console.WriteLine("pointHashSet.Remove(p1) -> {0}", pointHashSet.Remove(p1));

            Console.WriteLine("After p1.SetX(2) and p1.SetY(1)");
            Console.WriteLine("p1 = {0}", p1);
            Console.WriteLine("p2 = {0}", p2);
            Console.WriteLine("p1.GetHashCode() = {0}", p1.GetHashCode());
            Console.WriteLine("p2.GetHashCode() = {0}", p2.GetHashCode());
            Console.WriteLine("p1.Equals(p2) ? {0}", p1.Equals(p2));

            // Results:
            // Implementation 1.
            //p1 = (1, 2)
            //p2 = (2, 1)
            //p1.GetHashCode() = 1407402778    // OK, Equals false => different hash
            //p2.GetHashCode() = 780775469
            //p1.Equals(p2) ? False
            //pointHashSet.Contains(p1) = True
            //pointHashSet.Contains(p1 = True
            //pointHashSet.Remove(p1)->True    // OK, object was found in hash collection
            //pointHashSet.Remove(p1)->False
            //After p1.SetX(2) and p1.SetY(1)
            //p1 = (2, 1)
            //p2 = (2, 1)
            //p1.GetHashCode() = 1407402778    // Problem, Equals true and different hash
            //p2.GetHashCode() = 780775469
            //p1.Equals(p2) ? True
            //
            // Implementation 2.
            //p1 = (1, 2)
            //p2 = (2, 1)
            //p1.GetHashCode() = 3      // Problem, Equals false and same hash
            //p2.GetHashCode() = 3
            //p1.Equals(p2) ? False
            //pointHashSet.Contains(p1) = True
            //pointHashSet.Contains(p1 = False
            //pointHashSet.Remove(p1)->False    // Problem, object could not be found in hash collection
            //pointHashSet.Remove(p1)->True
            //After p1.SetX(2) and p1.SetY(1)
            //p1 = (2, 1)
            //p2 = (2, 1)
            //p1.GetHashCode() = 3     OK, Equals true => same hash
            //p2.GetHashCode() = 3
            //p1.Equals(p2) ? True
            //
            // Implementation 3.
            //p1 = (1, 2)
            //p2 = (2, 1)
            //p1.GetHashCode() = 63   // OK, Equals false => different hash
            //p2.GetHashCode() = 57
            //p1.Equals(p2) ? False
            //pointHashSet.Contains(p1) = True
            //pointHashSet.Contains(p1 = False
            //pointHashSet.Remove(p1)->False    // Problem, object could not be found in hash collection
            //pointHashSet.Remove(p1)->True
            //After p1.SetX(2) and p1.SetY(1)
            //p1 = (2, 1)
            //p2 = (2, 1)
            //p1.GetHashCode() = 57    OK, Equals true => same hash
            //p2.GetHashCode() = 57
            //p1.Equals(p2) ? True


            // Implementation 4. Use of readonly fields
            //p1 = (1, 2)
            //p2 = (2, 1)
            //p1.GetHashCode() = 63   // OK, Equals false => different hash
            //p2.GetHashCode() = 57
            //p1.Equals(p2) ? False
            //pointHashSet.Contains(p1) = True
            //pointHashSet.Contains(p1 = True
            //pointHashSet.Remove(p1)->True    // p1 was added only once and was found in hashed collection
            //pointHashSet.Remove(p1)->False
            //After p1.SetX(2) and p1.SetY(1)
            //p1 = (1, 2)
            //p2 = (2, 1)
            //p1.GetHashCode() = 63     // OK, Equals false => different hash
            //p2.GetHashCode() = 57
            //p1.Equals(p2) ? False

            // Reading: pages 142-143 CLR Via C# 4.0 - Object Hash Codes

         

        }
    }
}
