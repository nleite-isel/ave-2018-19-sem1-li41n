using System;

public static class StrBench {

    private static readonly String[] GREEK_CHARS = new String[]
    {
        "Alpha", "Beta", "Gamma", "Delta", "Epsilon",
        "Zeta", "Eta", "Theta", "Iota", "Kappa", "Lambda",
        "Mu", "Nu", "Xi", "Omicron", "Pi", "Rho", "Sigma",
        "Tau", "Upsilon", "Phi", "Chi", "Psi", "Omega"
    };

    public static Object noJoin() {
		return null;
    }

    public static Object testJoinWithPlus() {
		return StrJoins.JoinWithPlus(GREEK_CHARS);
    }

    public static Object testJoinWithBuilder() {
		return StrJoins.JoinWithBuilder(GREEK_CHARS);
    }

    public static Object testJoinWithJoin() {
		return StrJoins.JoinWithJoin(GREEK_CHARS);
    }

    public static void Main()
	{
		const long ITER_TIME  = 1000;
		const long NUM_WARMUP = 10;
		const long NUM_ITER   = 10;

		NBench.Benchmark(new BenchmarkMethod(StrBench.noJoin), "noJoin", ITER_TIME, NUM_WARMUP, NUM_ITER);
		NBench.Benchmark(new BenchmarkMethod(StrBench.testJoinWithPlus), "JoinWithPlus", ITER_TIME, NUM_WARMUP, NUM_ITER);
		NBench.Benchmark(new BenchmarkMethod(StrBench.testJoinWithBuilder), "JoinWithBuilder", ITER_TIME, NUM_WARMUP, NUM_ITER);
		NBench.Benchmark(new BenchmarkMethod(StrBench.testJoinWithJoin), "JoinWithJoin", ITER_TIME, NUM_WARMUP, NUM_ITER);
	}
}

// Executado em modo release, sem IO
// SIM #1 - Standard
/*
:: BENCHMARKING noJoin ::
# Warmup Iteration  1: 307084416 ops/s      3.26 ns
# Warmup Iteration  2: 312901216 ops/s      3.20 ns
# Warmup Iteration  3: 318267712 ops/s      3.14 ns
# Warmup Iteration  4: 316781344 ops/s      3.16 ns
# Warmup Iteration  5: 313419488 ops/s      3.19 ns
# Warmup Iteration  6: 312318944 ops/s      3.20 ns
# Warmup Iteration  7: 312096256 ops/s      3.20 ns
# Warmup Iteration  8: 314189408 ops/s      3.18 ns
# Warmup Iteration  9: 315202624 ops/s      3.17 ns
# Warmup Iteration 10: 318480448 ops/s      3.14 ns
Iteration  1: 309870912 ops/s       3.23 ns
Iteration  2: 315841536 ops/s       3.17 ns
Iteration  3: 318242208 ops/s       3.14 ns
Iteration  4: 320010688 ops/s       3.12 ns
Iteration  5: 319149888 ops/s       3.13 ns
Iteration  6: 316185376 ops/s       3.16 ns
Iteration  7: 319179680 ops/s       3.13 ns
Iteration  8: 320956480 ops/s       3.12 ns
Iteration  9: 321243552 ops/s       3.11 ns
Iteration 10: 321332608 ops/s       3.11 ns

Result: 321332608 ops/s     3.11 ns


:: BENCHMARKING JoinWithPlus ::
# Warmup Iteration  1: 319904 ops/s  3125.94 ns
# Warmup Iteration  2: 317824 ops/s  3146.40 ns
# Warmup Iteration  3: 319552 ops/s  3129.38 ns
# Warmup Iteration  4: 316320 ops/s  3161.36 ns
# Warmup Iteration  5: 307712 ops/s  3249.79 ns
# Warmup Iteration  6: 316480 ops/s  3159.76 ns
# Warmup Iteration  7: 318528 ops/s  3139.44 ns
# Warmup Iteration  8: 320160 ops/s  3123.44 ns
# Warmup Iteration  9: 320416 ops/s  3120.94 ns
# Warmup Iteration 10: 320256 ops/s  3122.50 ns
Iteration  1: 316128 ops/s   3163.28 ns
Iteration  2: 301600 ops/s   3315.65 ns
Iteration  3: 319840 ops/s   3126.56 ns
Iteration  4: 319264 ops/s   3132.20 ns
Iteration  5: 319808 ops/s   3126.88 ns
Iteration  6: 315744 ops/s   3167.12 ns
Iteration  7: 317728 ops/s   3147.35 ns
Iteration  8: 315904 ops/s   3165.52 ns
Iteration  9: 320160 ops/s   3123.44 ns
Iteration 10: 320416 ops/s   3120.94 ns

Result: 320416 ops/s     3120.94 ns


:: BENCHMARKING JoinWithBuilder ::
# Warmup Iteration  1: 1109728 ops/s      901.12 ns
# Warmup Iteration  2: 1104480 ops/s      905.40 ns
# Warmup Iteration  3: 1086368 ops/s      920.50 ns
# Warmup Iteration  4: 1111392 ops/s      899.77 ns
# Warmup Iteration  5: 1105120 ops/s      904.88 ns
# Warmup Iteration  6: 1093856 ops/s      914.20 ns
# Warmup Iteration  7: 1105376 ops/s      904.67 ns
# Warmup Iteration  8: 1094464 ops/s      913.69 ns
# Warmup Iteration  9: 1109184 ops/s      901.56 ns
# Warmup Iteration 10: 1103808 ops/s      905.95 ns
Iteration  1: 1075008 ops/s   930.23 ns
Iteration  2: 1095424 ops/s   912.89 ns
Iteration  3: 1106592 ops/s   903.68 ns
Iteration  4: 1076928 ops/s   928.57 ns
Iteration  5: 1081216 ops/s   924.88 ns
Iteration  6: 1097280 ops/s   911.34 ns
Iteration  7: 1074432 ops/s   930.72 ns
Iteration  8: 1078592 ops/s   927.13 ns
Iteration  9: 1101696 ops/s   907.69 ns
Iteration 10: 1089824 ops/s   917.58 ns

Result: 1106592 ops/s     903.68 ns


:: BENCHMARKING JoinWithJoin ::
# Warmup Iteration  1: 1429536 ops/s      699.53 ns
# Warmup Iteration  2: 1441280 ops/s      693.83 ns
# Warmup Iteration  3: 1474144 ops/s      678.36 ns
# Warmup Iteration  4: 1477440 ops/s      676.85 ns
# Warmup Iteration  5: 1437504 ops/s      695.65 ns
# Warmup Iteration  6: 1473440 ops/s      678.68 ns
# Warmup Iteration  7: 1450944 ops/s      689.21 ns
# Warmup Iteration  8: 1475968 ops/s      677.52 ns
# Warmup Iteration  9: 1474880 ops/s      678.02 ns
# Warmup Iteration 10: 1476416 ops/s      677.32 ns
Iteration  1: 1421536 ops/s   703.46 ns
Iteration  2: 1407264 ops/s   710.60 ns
Iteration  3: 1453472 ops/s   688.01 ns
Iteration  4: 1401024 ops/s   713.76 ns
Iteration  5: 1413504 ops/s   707.46 ns
Iteration  6: 1440256 ops/s   694.32 ns
Iteration  7: 1376928 ops/s   726.25 ns
Iteration  8: 1436640 ops/s   696.07 ns
Iteration  9: 1430304 ops/s   699.15 ns
Iteration 10: 1444352 ops/s   692.35 ns

Result: 1453472 ops/s     688.01 ns
*/

// SIM #2 - Usando só 1 chamada a method()
/*
:: BENCHMARKING noJoin ::
# Warmup Iteration  1: 28692996 ops/s      34.85 ns
# Warmup Iteration  2: 29531888 ops/s      33.86 ns
# Warmup Iteration  3: 29281636 ops/s      34.15 ns
# Warmup Iteration  4: 29736245 ops/s      33.63 ns
# Warmup Iteration  5: 29895153 ops/s      33.45 ns
# Warmup Iteration  6: 29890305 ops/s      33.46 ns
# Warmup Iteration  7: 29883073 ops/s      33.46 ns
# Warmup Iteration  8: 29474848 ops/s      33.93 ns
# Warmup Iteration  9: 29809637 ops/s      33.55 ns
# Warmup Iteration 10: 29885280 ops/s      33.46 ns
Iteration  1: 29899114 ops/s       33.45 ns
Iteration  2: 29899103 ops/s       33.45 ns
Iteration  3: 29902918 ops/s       33.44 ns
Iteration  4: 29722508 ops/s       33.64 ns
Iteration  5: 29896036 ops/s       33.45 ns
Iteration  6: 29908570 ops/s       33.44 ns
Iteration  7: 29902828 ops/s       33.44 ns
Iteration  8: 29870589 ops/s       33.48 ns
Iteration  9: 29738913 ops/s       33.63 ns
Iteration 10: 29913323 ops/s       33.43 ns

Result: 29913323 ops/s     33.43 ns


:: BENCHMARKING JoinWithPlus ::
# Warmup Iteration  1: 318768 ops/s  3137.08 ns
# Warmup Iteration  2: 317632 ops/s  3148.30 ns
# Warmup Iteration  3: 318675 ops/s  3137.99 ns
# Warmup Iteration  4: 315044 ops/s  3174.16 ns
# Warmup Iteration  5: 306694 ops/s  3260.58 ns
# Warmup Iteration  6: 312316 ops/s  3201.89 ns
# Warmup Iteration  7: 314622 ops/s  3178.42 ns
# Warmup Iteration  8: 317738 ops/s  3147.25 ns
# Warmup Iteration  9: 317315 ops/s  3151.44 ns
# Warmup Iteration 10: 302169 ops/s  3309.41 ns
Iteration  1: 295317 ops/s   3386.19 ns
Iteration  2: 299189 ops/s   3342.37 ns
Iteration  3: 306245 ops/s   3265.36 ns
Iteration  4: 308310 ops/s   3243.49 ns
Iteration  5: 298378 ops/s   3351.45 ns
Iteration  6: 313246 ops/s   3192.38 ns
Iteration  7: 299808 ops/s   3335.47 ns
Iteration  8: 297448 ops/s   3361.93 ns
Iteration  9: 304386 ops/s   3285.30 ns
Iteration 10: 308413 ops/s   3242.41 ns

Result: 313246 ops/s     3192.38 ns


:: BENCHMARKING JoinWithBuilder ::
# Warmup Iteration  1: 1024973 ops/s      975.64 ns
# Warmup Iteration  2: 1027569 ops/s      973.17 ns
# Warmup Iteration  3: 1023850 ops/s      976.71 ns
# Warmup Iteration  4: 1048498 ops/s      953.75 ns
# Warmup Iteration  5: 1060086 ops/s      943.32 ns
# Warmup Iteration  6: 1046018 ops/s      956.01 ns
# Warmup Iteration  7: 1055557 ops/s      947.37 ns
# Warmup Iteration  8: 1052643 ops/s      949.99 ns
# Warmup Iteration  9: 1060257 ops/s      943.17 ns
# Warmup Iteration 10: 1058179 ops/s      945.02 ns
Iteration  1: 1049015 ops/s   953.28 ns
Iteration  2: 1029065 ops/s   971.76 ns
Iteration  3: 1040313 ops/s   961.25 ns
Iteration  4: 1031518 ops/s   969.45 ns
Iteration  5: 1018385 ops/s   981.95 ns
Iteration  6: 1028116 ops/s   972.65 ns
Iteration  7: 1033551 ops/s   967.54 ns
Iteration  8: 1066107 ops/s   937.99 ns
Iteration  9: 1063610 ops/s   940.19 ns
Iteration 10: 1027654 ops/s   973.09 ns

Result: 1066107 ops/s     937.99 ns


:: BENCHMARKING JoinWithJoin ::
# Warmup Iteration  1: 1327527 ops/s      753.28 ns
# Warmup Iteration  2: 1318971 ops/s      758.17 ns
# Warmup Iteration  3: 1327003 ops/s      753.58 ns
# Warmup Iteration  4: 1322053 ops/s      756.40 ns
# Warmup Iteration  5: 1384885 ops/s      722.08 ns
# Warmup Iteration  6: 1357899 ops/s      736.43 ns
# Warmup Iteration  7: 1375776 ops/s      726.86 ns
# Warmup Iteration  8: 1347656 ops/s      742.03 ns
# Warmup Iteration  9: 1311409 ops/s      762.54 ns
# Warmup Iteration 10: 1278347 ops/s      782.26 ns
Iteration  1: 1353923 ops/s   738.59 ns
Iteration  2: 1367154 ops/s   731.45 ns
Iteration  3: 1378935 ops/s   725.20 ns
Iteration  4: 1328060 ops/s   752.98 ns
Iteration  5: 1340167 ops/s   746.18 ns
Iteration  6: 1336806 ops/s   748.05 ns
Iteration  7: 1374780 ops/s   727.39 ns
Iteration  8: 1364254 ops/s   733.00 ns
Iteration  9: 1349804 ops/s   740.85 ns
Iteration 10: 1330448 ops/s   751.63 ns

Result: 1378935 ops/s     725.20 ns

*/ 