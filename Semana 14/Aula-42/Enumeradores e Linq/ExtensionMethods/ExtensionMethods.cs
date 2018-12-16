

using System;
using System.Collections.Generic;

namespace MyExtensions1 {
	public static class Extensions {
	
		public static IEnumerable<U> Select<T, U>(this IEnumerable<T> seq, Converter<T, U> selector)
        {
            foreach (T t in seq) yield return selector(t);
        }
		
		public static IEnumerable<U> SelectMany<T,U>(this IEnumerable<T> seq, Converter<T,IEnumerable<U>> selector) 
		{
		   foreach(T t in seq){
			   foreach(U u in selector(t)) { yield return u; }
		   }
		}
		public static IEnumerable<TSource> Where<TSource>(this IEnumerable<TSource> source, 
				Func<TSource, bool> predicate) {
			
			foreach (TSource t in source)
			{
				if (predicate(t))
					yield return t;
			}
		
		}
	
		public static IEnumerable<T> OrderBy<T,U>(this IEnumerable<T> seq, Converter<T,U> sortkey) 
							where U : IComparable<U>
		{
			List<T> list = new List<T>(seq);
			for(int begin = 0; begin<list.Count ; ++begin){
				int minix = begin;
				for(int i = begin+1 ; i<list.Count ; ++i){
					if(sortkey(list[i]).CompareTo(sortkey(list[minix])) < 0){minix = i;}
				}
				if(minix != begin){
					T min = list[minix];
					list[minix] = list[begin];
					list[begin] = min;
				}
				yield return list[begin];
			}
		}
		
		public static IEnumerable<T> OrderBy2<T,U>(this IEnumerable<T> seq, 
						Converter<T,U> sortkey) where U : IComparable<U> 
		{
			List<T> list = new List<T>(seq);
			list.Sort( delegate(T t1, T t2) { return sortkey(t1).CompareTo(sortkey(t2));} );
			return list;
		}

		
		
	}

}