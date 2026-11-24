var fs = new List<Func<int>>();
for (int i = 0; i < 3; i++)
{
    fs.Add(() => i); // CONTROL! int j = i; fs.Add(() => j);
}
Console.WriteLine(string.Join(",", fs.Select(f => f())));
