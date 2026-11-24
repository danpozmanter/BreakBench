var stock = new Dictionary<string, int> { ["apple"] = 3, ["plum"] = 4 };
var name = args[0];
Console.WriteLine(stock[name] + 5); // CONTROL! Console.WriteLine(stock.TryGetValue(name, out var n) ? (n + 5).ToString() : "unknown");
