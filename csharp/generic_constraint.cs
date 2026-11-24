var ps = new List<Point> { new(3, 4), new(1, 2) };
ps.Sort(); // CONTROL! ps.Sort((a, b) => a.X.CompareTo(b.X));
Console.WriteLine(ps[0].X);

record Point(int X, int Y);
