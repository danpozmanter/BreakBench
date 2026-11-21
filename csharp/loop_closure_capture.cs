var fs = new List<Func<int>>();
for (int i = 0; i < 3; i++)
{
    fs.Add(() => i);
}
Console.WriteLine(string.Join(",", fs.Select(f => f())));
