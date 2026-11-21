int[] xs = { 1, 2, 3, 4, 5, 6 };
var evens = xs.Where(x => x % 2 == 0);
int total = evens.Sum();
int count = evens.Count();
Console.WriteLine($"{total} {count}");
