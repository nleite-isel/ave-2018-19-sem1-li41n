/*****************************************************************************************
 * Centro de Cálculo do Instituto Superior de Engenharia de Lisboa - CCISEL              *
 *****************************************************************************************/

using System;
using System.Collections;
using System.Diagnostics;
using System.Collections.Generic;

class ContextExample  {
            public int aField = 0;
            public Action AMethod(int aParam)
            {
                long aLocal;
                aLocal = DateTime.Now.Millisecond;
				Console.WriteLine("AMethod");
                return delegate
                {
                    Console.WriteLine("aField = {0}, aParam = {1}, aLocal = {2}", aField, aParam, aLocal);
                    aLocal += 1; aField += 1;
                };
            }
        }

class Program {
        public static void Main1()
        {
            ContextExample ce1 = new ContextExample();
            ce1.aField = 1;
            Action mi1 = ce1.AMethod(2);
            mi1(); // aField = 1, aParam = 2, aLocal = 87
            ce1.aField = 3;
            mi1(); // aField = 3, aParam = 2, aLocal = 88
            Action mi2 = ce1.AMethod(20);
            mi2(); // aField = 4, aParam = 20, aLocal = 94
            mi1(); // aField = 5, aParam = 2, aLocal = 89
        }    

// Resultados:
// aField = 1, aParam = 2, aLocal = 87
// aField = 3, aParam = 2, aLocal = 88
// aField = 4, aParam = 20, aLocal = 94
// aField = 5, aParam = 2, aLocal = 89
		
}