var orders = Enumerable.Range(0, 200).Select(day => new Order(day * 7 % 5, day)).ToList();
// UNDEFINED: List.Sort is an unstable sort, so equal elements may change order
orders.Sort((a, b) => a.Customer.CompareTo(b.Customer)); // CONTROL! orders = orders.OrderBy(o => o.Customer).ToList();
var kept = orders.Zip(orders.Skip(1)).All(p => p.First.Customer != p.Second.Customer || p.First.Day < p.Second.Day);
Console.WriteLine(kept ? "kept" : "scrambled");

record Order(int Customer, int Day);
