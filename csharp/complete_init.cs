var c = new Config(5, 3);
var partial = new Config(5); // BREAK!
Console.WriteLine($"{c.Timeout} {c.Retries}");

record Config(int Timeout, int Retries);
