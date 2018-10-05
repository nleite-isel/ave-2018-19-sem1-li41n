using System;

namespace Exercicios
{
    internal class ValidatorAttribute : Attribute
    {
        private string v;

        public ValidatorAttribute(string v)
        {
            this.v = v;
        }

        // ...
    }
}