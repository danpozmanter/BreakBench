int v = int.Parse(args[0]);
// CONTROL! if (v < 0 || v > 255) { Console.WriteLine("out of range"); return; }
byte b = (byte)v;
Console.WriteLine(b);
