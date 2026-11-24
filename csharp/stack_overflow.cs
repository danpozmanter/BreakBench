static long Walk(long n) => n == 0 ? 0 : (Walk(n - 1) * 31 + n) % 1_000_000_007L;

Console.WriteLine(Walk(long.Parse(args[0]))); // CONTROL! long n = long.Parse(args[0]), acc = 0; for (long i = 1; i <= n; i++) acc = (acc * 31 + i) % 1_000_000_007L; Console.WriteLine(acc);
