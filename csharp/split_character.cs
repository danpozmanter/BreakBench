var name = "a👍b";
var n = int.Parse(args[0]);
Console.WriteLine(name[..n]); // CONTROL! Console.WriteLine(new System.Globalization.StringInfo(name).SubstringByTextElements(0, n));
