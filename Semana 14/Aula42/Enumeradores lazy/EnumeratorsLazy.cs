
using System;
using System.Collections.Generic;
using System.Collections;

namespace EnumeratorLazyExample
{
    class Filter<T> : IEnumerable<T>
    {
        IEnumerable<T> enumerable;
        Predicate<T> pred;

        public Filter(IEnumerable<T> ie, Predicate<T> p)
        {
            enumerable = ie;
            pred = p;
        }
        // Method from interface IEnumerable<T>
        public IEnumerator<T> GetEnumerator()
        {
            return new FilterEnumerator(enumerable.GetEnumerator(), pred);
        }
        // Method from interface IEnumerable
        // Explicit interface method implementation
        IEnumerator IEnumerable.GetEnumerator()
        {
            return this.GetEnumerator();
        }

        // Enumerador
        // Nested class
        class FilterEnumerator : IEnumerator<T>
        {
            IEnumerator<T> enumerator;
            Predicate<T> pred;

            public FilterEnumerator(IEnumerator<T> ie, Predicate<T> p)
            {
                enumerator = ie;
                pred = p;
            }
            // Methods from interface IEnumerator<T>
            public void Dispose() { enumerator.Dispose(); }
            public T Current { get { return enumerator.Current; } }

            // Methods from interface IEnumerator
            // Explicit interface method implementation
            Object IEnumerator.Current { get { return Current; } } // box if valuetype

            public bool MoveNext()
            {
                bool b;
                while ((b = enumerator.MoveNext()) && pred(enumerator.Current) == false) ;
                return b;
            }
            public void Reset() { throw new NotSupportedException(); }
        }
    }

    class Enumerables
    {
        // Versao Eager
        //public static IEnumerable<T> FilterToList<T>(IEnumerable<T> seq, Predicate<T> pred)
        //{
        //    List<T> result = new List<T>();
        //    foreach (T t in seq)
        //    {
        //        if (pred(t)) result.Add(t);
        //    }
        //    return result;
        //}

        public static void Main1()
        {
            int[] a = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
            // Versao Eager
            //IEnumerable<int> enumerable = FilterToList(a, v => v % 2 == 0);
            // Versao Lazy
            IEnumerable<int> enumerable = new Filter<int>(a, v => v % 2 == 0);
            Console.WriteLine("Numeros pares do array:");
            foreach (int i in enumerable)
                Console.WriteLine(i);

            // Utilizando interface nao generica (nao recomendavel na pratica)
            Console.WriteLine("Utilizando interface nao generica:");
            IEnumerable enumerable1 = new Filter<int>(a, v => v % 2 == 0);
            Console.WriteLine("Numeros pares do array:");
            foreach (Object o in enumerable1)
                Console.WriteLine((int)o);  // unbox
        }
    }

}








