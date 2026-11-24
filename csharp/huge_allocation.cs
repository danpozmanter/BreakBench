long n = long.Parse(args[0]);
// CONTROL! if (n > (1L << 30)) { Console.WriteLine("too large"); return; }
var buf = new byte[n];
buf[n - 1] = 1;
Console.WriteLine(buf.LongLength);
