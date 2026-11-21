// LEVEL: STD

var counts = new[] { "a", "b", "a" }.CountBy(w => w).ToDictionary();
Console.WriteLine($"a={counts["a"]} b={counts["b"]}");
