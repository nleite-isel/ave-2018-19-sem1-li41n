

using System.IO;
using System;
using System.Collections.Generic;

using System.Linq;


namespace LinqExample
{


    public class Global
    {

        static void Main1(string[] args)
        {
            // Declaration and initialization of an array of anonymous types
            var customers = new[]{
            new { Name = "Marco", Discount = 4.5 },
            new { Name = "Paolo", Discount = 3.0 },
            new { Name = "Tom", Discount = 3.5 }
        };

            var query = from c in customers
                        where c.Discount > 3
                        orderby c.Discount
                        select new { c.Name, Perc = c.Discount / 100 };

            foreach (var x in query)
            {
                Console.WriteLine(x);
            }
        }
    }

}