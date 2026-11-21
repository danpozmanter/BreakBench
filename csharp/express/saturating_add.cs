// LEVEL: STD

long n = long.Parse(args[0]);
Console.WriteLine(long.CreateSaturating((Int128)n + 1));
