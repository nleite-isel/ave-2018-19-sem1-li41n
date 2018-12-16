
using System;
using System.Collections.Generic;

class Enumerables
{
    public static IEnumerable<T> FilterToList<T>(
                    IEnumerable<T> seq, Predicate<T> pred)
    {
        List<T> result = new List<T>();
        foreach (T t in seq)
        {
            if (pred(t))
                result.Add(t);
        }
        return result;
    }

    public static void Main1()
    {
        int[] a = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
        //IEnumerable<int> enumerable =
                //FilterToList(a, delegate (int v) { return v % 2 == 0; });
        // Ou
        IEnumerable<int> enumerable =
                FilterToList(a, v => v % 2 == 0);
        
        Console.WriteLine("Numeros pares do array:");
        foreach (int i in enumerable)
            Console.WriteLine(i);
    }
}