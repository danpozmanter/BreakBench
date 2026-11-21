// LEVEL: STD

var s = new HashSet<(int, int)> { (1, 2) };
Console.WriteLine(s.Contains((1, 2)).ToString().ToLowerInvariant());
