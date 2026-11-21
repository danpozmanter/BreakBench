var xs = new List<int> { 1, 2, 3 };
long i = long.Parse(args[0]);
Console.WriteLine(i < xs.Count ? "less" : "not less");
