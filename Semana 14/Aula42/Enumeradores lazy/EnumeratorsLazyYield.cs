
using System;
using System.Collections.Generic;
using System.Collections;


namespace EnumeratorLazyYieldExample
{


    class Enumerables
    {
        // VersaoEager
        //public static IEnumerable<T> FilterToList<T>(IEnumerable<T> seq, Predicate<T> pred)
        //{
        //    List<T> result = new List<T>();
        //    foreach (T t in seq)
        //    {
        //        if (pred(t)) result.Add(t);
        //    }
        //    return result;
        //}

        // Versao Lazy usando yield
        public static IEnumerable<T> Filter<T>(IEnumerable<T> seq, Predicate<T> pred)
        {
            // List<T> result = new List<T>();
            foreach (T t in seq)
            {
                if (pred(t))
                    yield return t; // Em vez de result.Add(t);
            }
        }

        public static void Main()
        {
            int[] a = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
            // Versao Eager
            // IEnumerable<int> enumerable = FilterToList(a, delegate (int v) { return v % 2 == 0; } );
            // Versao Lazy usando yield
            Console.WriteLine("Versao Lazy usando yield");
            IEnumerable<int> enumerable = Enumerables.Filter<int>(a, delegate (int v) { return v % 2 == 0; });
            Console.WriteLine("Numeros pares do array:");
            foreach (int i in enumerable)
                Console.WriteLine(i);
        }
    }

}








