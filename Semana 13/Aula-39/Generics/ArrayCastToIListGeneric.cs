using System;
using System.Collections.Generic;

namespace Aula33.Generics
{
    public class ArrayCastToIListGeneric
    {
        public ArrayCastToIListGeneric()
        {
        }

        public static void Main1() {
            int[] arr = { 1, 2, 3, 4, 5 }; // Deriva de System.Array
            //arr. ... // Interface generica suportada em tempo de execucao por questoes de eficiencia da implementacao,
                        // ou seja, metodos genericos nao sao visiveis na API de Array
            IList<int> list = arr; 
            //list.Add(6); // Excecao, array tem dimensao fixa e e' readonly
            list.IndexOf(2); // OK
            foreach (int i in list) {
                Console.WriteLine(i);
            }

        }
    }
}
