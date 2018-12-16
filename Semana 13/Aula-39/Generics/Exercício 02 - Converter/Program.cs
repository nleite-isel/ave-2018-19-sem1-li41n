using System;

namespace Exercício_02___Converter
{
    public delegate TOutput Converter<in TInput, out TOutput>(TInput input);

    class ArrayUtils
    {
        public static TOutput[] ConvertAll<TInput, TOutput>(TInput[] array,
                                        Converter<TInput, TOutput> converter)
        {
            TOutput[] res = new TOutput[array.Length];
            for (int i = 0; i < array.Length; ++i)
                res[i] = converter(array[i]);

            return res;
        }
    }

    class Program
    {
        public static double ConvToPercentage(double v)
        {
            return (v * 100) / 20;
        }

        public static void Main1()
        {
            double[] arr = { 13.0, 14.3, 12.6, 16.0 };

            double[] res = ArrayUtils.ConvertAll<double, double>(arr, ConvToPercentage);

            Array.ForEach(res, Console.WriteLine);
        }
    }
}
