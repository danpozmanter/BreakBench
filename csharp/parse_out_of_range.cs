long n = long.Parse(args[0]); // CONTROL! bool ok = long.TryParse(args[0], out long n);
Console.WriteLine(n); // CONTROL! Console.WriteLine(ok ? n.ToString() : "invalid");
