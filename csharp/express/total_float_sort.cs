// LEVEL: STD

double[] xs = [3, double.NaN, 1, 2];
Array.Sort(xs);
Console.WriteLine(string.Join(" ", xs.Select(x => double.IsNaN(x) ? "NaN" : x.ToString())));
