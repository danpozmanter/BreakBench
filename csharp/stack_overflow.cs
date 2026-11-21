static long Walk(long n) => n == 0 ? 0 : (Walk(n - 1) * 31 + n) % 1_000_000_007L;

Console.WriteLine(Walk(long.Parse(args[0])));
