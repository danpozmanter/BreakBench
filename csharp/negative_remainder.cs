static bool IsOdd(long n) => n % 2 == 1; // CONTROL! static bool IsOdd(long n) => n % 2 != 0;

Console.WriteLine(IsOdd(long.Parse(args[0])) ? "odd" : "even");
