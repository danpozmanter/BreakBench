var count = long.Parse(args[0]);
// CONTROL! if (count > (1L << 27)) { Console.WriteLine("too large"); return; }
var size = count * 8;
var records = new byte[size];
records[8] = 99;
Console.WriteLine("stored");
