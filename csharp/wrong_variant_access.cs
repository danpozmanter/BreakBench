object v = 42;
var s = (string)v; // CONTROL! if (v is string s) Console.WriteLine(s.Length); else Console.WriteLine("not text");
Console.WriteLine(s.Length); // BREAK!
