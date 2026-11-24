Console.WriteLine("before");
var c = (Color)int.Parse(args[0]); // CONTROL! var n = int.Parse(args[0]);
Console.WriteLine(c); // CONTROL! Console.WriteLine(Enum.IsDefined(typeof(Color), n) ? ((Color)n).ToString() : "invalid");

enum Color { Red, Green, Blue }
