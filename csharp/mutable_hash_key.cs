var seen = new HashSet<List<int>>();
var key = new List<int> { 1, 2 };
seen.Add(key);
key[0] = 9;
foreach (var e in seen)
{
    Console.WriteLine(seen.Contains(e) ? "found" : "lost");
}
