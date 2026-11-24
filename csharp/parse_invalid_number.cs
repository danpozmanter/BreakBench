int n = int.Parse(args[0]); // CONTROL! bool ok = int.TryParse(args[0], out int n);
Console.WriteLine(n + 1); // CONTROL! Console.WriteLine(ok ? (n + 1).ToString() : "invalid");
