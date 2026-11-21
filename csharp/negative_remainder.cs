static bool IsOdd(long n) => n % 2 == 1;

Console.WriteLine(IsOdd(long.Parse(args[0])) ? "odd" : "even");
