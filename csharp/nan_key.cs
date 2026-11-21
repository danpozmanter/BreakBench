var a = double.Parse("NaN");
var b = double.Parse("NaN");
var s = new HashSet<double> { a };
Console.WriteLine(s.Contains(b) ? "found" : "missing");
