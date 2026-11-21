var xs = new List<int> { 1, 2, 2, 3 };
foreach (var x in xs)
{
    if (x == 2) xs.Remove(x);
}
Console.WriteLine(string.Join(",", xs));
