var xs = args.Select(long.Parse).ToList();
Console.WriteLine(xs.Max() + 1); // CONTROL! Console.WriteLine(xs.Count == 0 ? "no readings" : (xs.Max() + 1).ToString());
