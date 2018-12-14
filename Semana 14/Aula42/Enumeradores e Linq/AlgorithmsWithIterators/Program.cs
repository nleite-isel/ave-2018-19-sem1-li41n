using System;
using System.Collections.Generic;
using System.Text;

namespace AlgorithmsWithIterators
{
    class Program
    {

        public static IEnumerable<U> Select<T, U>(IEnumerable<T> seq, Converter<T, U> selector)
        {
            foreach (T t in seq) yield return selector(t);
        }

        private static int square(int x)
        {
            return x * x;
        }

        static void Main1(string[] args)
        {

            int[] ai = { 1, 2, 3, 4, 5 };
            IEnumerable<int> resEnum = Select<int,int>(ai, new Converter<int, int>(square));

            foreach(int i in resEnum) {
                Console.WriteLine(i);
            }
        }
    }
}
