// LEVEL: STD

IReadOnlyList<int> xs = [1, 2, 3];
xs[0] = 9; // REJECT!
Console.WriteLine(xs.Count);
