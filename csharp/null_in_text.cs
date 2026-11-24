static string? FindName(long id) => id == 1 ? "alice" : null;

var name = FindName(long.Parse(args[0]));
Console.WriteLine($"hello, {name}"); // CONTROL! Console.WriteLine($"hello, {name ?? "nobody"}");
