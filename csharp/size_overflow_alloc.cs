var count = long.Parse(args[0]);
var size = count * 8;
var records = new byte[size];
records[8] = 99;
Console.WriteLine("stored");
