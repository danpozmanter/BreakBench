long n = long.Parse(args[0]);
var buf = new byte[n];
buf[n - 1] = 1;
Console.WriteLine(buf.LongLength);
