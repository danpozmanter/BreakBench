long n = long.Parse(args[0]);
Show(n); // CONTROL! Console.WriteLine(n);

static void Show(double f) => Console.WriteLine((long)f);
