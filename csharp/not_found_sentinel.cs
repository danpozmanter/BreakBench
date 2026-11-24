var line = args[0];
var pos = line.IndexOf(':');
Console.WriteLine(line.Substring(pos + 1)); // CONTROL! Console.WriteLine(pos < 0 ? "no colon" : line.Substring(pos + 1));
