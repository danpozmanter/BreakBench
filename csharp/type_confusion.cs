static long Add(long a, long b) => a + b;

string raw = args[0];
Console.WriteLine(Add(raw, 3)); // BREAK!
Console.WriteLine(raw + Add(1, 2));
