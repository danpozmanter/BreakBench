var s = new HashSet<Point> { new(1, 2, "a"), new(1, 2, "b") };
Console.WriteLine(s.Count);

class Point(int x, int y, string label)
{
    public int X { get; } = x;
    public int Y { get; } = y;
    public string Label { get; } = label;
    public override bool Equals(object? o) => o is Point p && p.X == X && p.Y == Y;
}
