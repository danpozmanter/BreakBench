Console.WriteLine(Count(new List<int> { 1, 2, 3 }));

static int Count(IReadOnlyList<int> xs)
{
    xs[0] = 9; // BREAK!
    return xs.Count;
}
