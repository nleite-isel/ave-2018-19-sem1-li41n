using System;
using System.Collections.Generic;

namespace Aulas1617.EqualsandGetHashCode
{

    public sealed class Book
    {
        private readonly string isbn;

        public string Isbn
        {
            get
            {
                return isbn;
            }
        }

        public Book(string isbn)
        {
            this.isbn = isbn;
        }

        public override bool Equals(Object obj)
        {
            if (obj == null)
                return false;
            if (Object.ReferenceEquals(this, obj))
                return true;

            Book book = obj as Book;
            if (book != null)
                return isbn.Equals(book.Isbn);    
            else
                return false;
        }

        public override int GetHashCode() {
            // 1. Not a good implementation: Equal but distinct objects have different addresses (hash codes)
            return base.GetHashCode();
            // 2. Return imutable and unique id, ISBN hash code 
             //return Isbn.GetHashCode();
            // 3. Simulate a hash collision
            //return 1;
        }

        public override string ToString()
        {
            return string.Format("[Book: Isbn = {0}, HashCode = {1}]", Isbn, GetHashCode());
        }

    }

    public class HashCode
    {
        public static void Main1()
        {
            // Consider this code that tests two instances of the Book class for equality:
            // Swing Tutorial, 2nd edition

            // In 1., equal but distinct objects have different addresses (hash codes)
            // In 2., equal but distinct objects have the same hash codes
            Book book1 = new Book("0201914670");
            Book book2 = new Book("0201914670");

            // 3. Simulating a hash collision: different objects with the same hash code. 
            // Collisions are treated transparently by hashed collections
            //Book book2 = new Book("02");

            Console.WriteLine("firstBook = " + book1);
            Console.WriteLine("secondBook = " + book2);

            if (book1.Equals(book2))
            {
                Console.WriteLine("objects are equal");
            }
            else
            {
                Console.WriteLine("objects are not equal");
            }
            HashSet<Book> hashSet = new HashSet<Book>();
            bool b1 = hashSet.Add(book1);
            bool b2 = hashSet.Add(book2);
            Console.WriteLine("Insert book1 = {0}, insert book2 = {1}", b1, b2);
            foreach (var b in hashSet) {
                Console.WriteLine("b = {0}", b);
            }

            // Results
            Console.WriteLine("hashSet.Contains(book1): {0}", hashSet.Contains(book1));
            Console.WriteLine("hashSet.Remove(book1) -> {0}", hashSet.Remove(book1));
            Console.WriteLine("hashSet.Contains(book1): {0}", hashSet.Contains(book1));
            Console.WriteLine("hashSet.Contains(book2): {0}", hashSet.Contains(book2));
        }
    }
}

// Results
// 1.
//firstBook = [Book: Isbn = 0201914670, HashCode = -1745192435]
//secondBook = [Book: Isbn = 0201914670, HashCode = 1923147552]
//objects are equal
//Insert book1 = True, insert book2 = True
//b = [Book: Isbn = 0201914670, HashCode = -1745192435]
//b = [Book: Isbn = 0201914670, HashCode = 1923147552]
//hashSet.Contains(book1): True
//hashSet.Remove(book1) -> True
//hashSet.Contains(book1): False
//hashSet.Contains(book2): True  // PROBLEM: book with this ISBN was already removed from the hashset

// 2.
//firstBook = [Book: Isbn = 0201914670, HashCode = 1441600692]
//secondBook = [Book: Isbn = 0201914670, HashCode = 1441600692]
//objects are equal
//Insert book1 = True, insert book2 = False
//b = [Book: Isbn = 0201914670, HashCode = 1441600692]
//hashSet.Contains(book1): True
//hashSet.Remove(book1) -> True
//hashSet.Contains(book1): False
//hashSet.Contains(book2): False // Book2 was not even inserted

// 3.
//firstBook = [Book: Isbn = 0201914670, HashCode = 1]
//secondBook = [Book: Isbn = 02, HashCode = 1]
//objects are not equal
//Insert book1 = True, insert book2 = True
//b = [Book: Isbn = 0201914670, HashCode = 1]
//b = [Book: Isbn = 02, HashCode = 1]
//hashSet.Contains(book1): True
//hashSet.Remove(book1) -> True
//hashSet.Contains(book1): False
//hashSet.Contains(book2): True
