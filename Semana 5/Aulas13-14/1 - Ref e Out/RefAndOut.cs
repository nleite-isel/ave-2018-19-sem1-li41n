
using System;

namespace RefOutParameters
{
    public class C
    {

        public static void GetVal(out int v)
        {
            //Console.WriteLine(v); // Erro, v não pode ser lido antes de ter sido iniciado; é um parâmetro de saída
            v = 10;
            Console.WriteLine("[GetVal] v = {0}", v);  //OK, depois de iniciado, v pode ser lido
        }

        public static void AddVal(ref int v)
        {
            v += 2;
            Console.WriteLine("AddVal v = {0}", v);
        }

    }



    public class Program
    {

        public static void Main1()
        {
            //int n;
            int n = 10;

            C.AddVal(ref n); // Erro, variável não foi iniciada logo não pode ser passada por referência.

            C.GetVal(out n);
            Console.WriteLine("[Main] n = {0}", n);
            C.AddVal(ref n);
            Console.WriteLine("After AddVal");
            Console.WriteLine("[Main] n = {0}", n);

        }
    }

}




