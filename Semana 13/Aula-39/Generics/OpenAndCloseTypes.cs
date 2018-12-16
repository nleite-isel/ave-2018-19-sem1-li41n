using System;
using System.Collections.Generic;

namespace Aula33.Generics
{
    // DictionaryStringKey<TVal> e Dictionary<String, TVal> sao tipos abertos (open types)
    class DictionaryStringKey<TVal> : Dictionary<String, TVal> {
        // ...
    }

    public class OpenAndCloseTypes
    {
        static object CreateInstance(Type type) {
            object o = null;
            try {
                o = Activator.CreateInstance(type);
                Console.WriteLine("Created instance of {0}", type.ToString());
            }
            catch (ArgumentException e) {
                Console.WriteLine(e.Message);
            }
            return o;
        }

        public static void Main() {
            // DictionaryStringKey<Guid> e' um tipo fechado (closed type)
            // DictionaryStringKey<Guid> deriva do tipo fechado Dictionary<String, Guid>
            DictionaryStringKey<Guid> d = new DictionaryStringKey<Guid>();
            object o = null;
            Type type1 = typeof(Dictionary<,>);
            o = CreateInstance(type1); // Erro, pois Dictionary<,> e' um tipo aberto, nao e' possivel criar instancias
            Console.WriteLine();

            Type type2 = typeof(DictionaryStringKey<>);
            o = CreateInstance(type2); // Erro, pois DictionaryStringKey<> e' um tipo aberto, nao e' possivel criar instancias
            Console.WriteLine();

            Type type3 = typeof(DictionaryStringKey<Guid>); // Closed type
            o = CreateInstance(type3); // OK
            Console.WriteLine("o.GetType() = {0}", o.GetType());
            Console.WriteLine();

            // Nota:
            // Nao existe relacao de heranca entre um closed type e o seu opened type.
            //
            Console.WriteLine("type2.IsAssignableFrom(type3) ? {0}", type2.IsAssignableFrom(type3)); // false
            // Os tipos base de um tipo fechado sao os mesmos do tipo aberto substituindo os parametros de 
            // tipo pelos argumentos usados.
            Console.WriteLine("typeof(Dictionary<String, Guid>).IsAssignableFrom(type3) ? {0}", 
                              typeof(Dictionary<String, Guid>).IsAssignableFrom(type3)); // true

        }
    }
}
