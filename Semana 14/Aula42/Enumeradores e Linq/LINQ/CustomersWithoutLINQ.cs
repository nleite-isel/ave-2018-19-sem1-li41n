

using System.IO;
using System;
using System.Collections.Generic;

using MyExtensions1; // To use my extension methods

namespace LinqExample
{

    public class CustomerWithoutLinq
    {

        static void Main1(string[] args)
        {
            // Declaration and initialization of an array of anonymous types
            var customers = new[]{
            new { Name = "Marco", Discount = 4.5 },
            new { Name = "Paolo", Discount = 3.0 },
            new { Name = "Tom", Discount = 3.5 }
        };

            var query = customers
                            .Where(c => c.Discount > 3)
                            .OrderBy(c => c.Discount)
                            .Select(c => new { c.Name, Perc = c.Discount / 100 });

            foreach (var x in query)
            {
                Console.WriteLine(x);
            }
        }
    }
}