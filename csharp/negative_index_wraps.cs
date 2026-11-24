int[] readings = { 10, 20, 30 };
var i = int.Parse(args[0]);
Console.WriteLine(readings[i] - readings[i - 1]); // CONTROL! Console.WriteLine(i > 0 ? (readings[i] - readings[i - 1]).ToString() : "no previous");
