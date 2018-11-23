using System;

namespace EIMI
{
    interface IStorable
    {
        void Write();
        void Read();
    }
    interface ITalk
    {
        void Talk();
        void Read();
    }
    public class Document : IStorable, ITalk
    {
        // Torna IStorable::Read virtual (deixa de ser final)
        public virtual void Read() { Console.WriteLine("Document::Read"); }
        // /*public*/ /*virtual*/ void IStorable.Read() { Console.WriteLine("IStorable::Read"); } // Metodos explicitos nao podem ser publicos nem virtuais
        // IStorable::Write é virtual final
        public void Write() { Console.WriteLine("Document::Write"); }

        // ITalk::Read virtual final e private de Document
        void ITalk.Read() { Console.WriteLine("ITalk::Read"); }
        // ITalk::Talk é virtual final
        public void Talk() { Console.WriteLine("Document::Talk"); }
    }

    public sealed class Program
    {
        public static void Main1()
        {
            Document doc = new Document();
            doc.Read();
            doc.Talk();

            IStorable isdoc = doc;
            isdoc.Read();

            ITalk itdoc = doc;
            itdoc.Read();
        }
    }
}

/*
Document::Read
Document::Talk
Document::Read
ITalk::Read
*/ 
	
	