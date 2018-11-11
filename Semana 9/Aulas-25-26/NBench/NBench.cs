using System;

public delegate Object BenchmarkMethod();

public static class NBench
{
    private class TimeReg
    {
        public long ops;
        public long time;
    }
	
	public static void Benchmark(BenchmarkMethod method, String title, long time, long numWarmups, long numIters)
	{
        Console.WriteLine("\n:: BENCHMARKING {0} ::",  title);
        long numOps = OutterBenchmark(method, time, numWarmups, numIters);
        Console.WriteLine("\nResult: {0} ops/s\t{1,8:0.00} ns\n", numOps, (1.0/numOps)*1.0e9);
	}

    private static long OutterBenchmark(BenchmarkMethod method, long time, long warmups, long iters)
    {
        TimeReg timeReg = new TimeReg();
        Round(method, time, warmups, timeReg, "# Warmup ");
        return Round(method, time, iters, timeReg, "");
    }

	private static long Round(BenchmarkMethod method, long time, long iters, TimeReg timeReg, string msg) 
	{
		long bestNumOps = 0;
		long numOps;
        for (long i = 1; i <= iters; ++i) {
            Console.Write("{0}Iteration {1,2}: ", msg, i);
			InnerBenchmark(method, time, timeReg);
            numOps = (long)((((double)timeReg.ops)/timeReg.time)*1000);
            if (numOps > bestNumOps) 
            {
				bestNumOps = numOps;
			}
            Console.WriteLine("{0} ops/s\t{1,8:0.00} ns", numOps, (1.0/numOps)*1.0e9);
            Collect();
		}
		return bestNumOps;
	}

    private static void InnerBenchmark(BenchmarkMethod method, long time, TimeReg timeReg)
    {
        long ops = 0;
        long begTime = Environment.TickCount, curTime, endTime = begTime + time;
        do {
            method(); method(); method(); method(); method(); method(); method(); method(); 
			method(); method(); method(); method(); method(); method(); method(); method(); 
			method(); method(); method(); method(); method(); method(); method(); method(); 
			method(); method(); method(); method(); method(); method(); method(); method(); 
			ops += 32;

            /*
            method();
            ops++;
            */
            
			curTime = Environment.TickCount;
		} while (curTime < endTime);
        timeReg.ops = ops;
        timeReg.time = curTime - begTime;
	}
	
	public static void Collect()
	{
		GC.Collect();
	}
}
