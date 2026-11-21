var xs = new List<double> { 5, double.NaN, 3, 1, double.NaN, 4, 2 };
xs.Sort();
var finite = xs.Where(x => !double.IsNaN(x)).ToList();
bool ordered = finite.Zip(finite.Skip(1)).All(p => p.First <= p.Second);
Console.WriteLine(ordered ? "ordered" : "unordered");
