using System.Text.RegularExpressions;

Console.WriteLine(Regex.IsMatch(args[0], "^(a+)+$") ? "match" : "no match"); // CONTROL! Console.WriteLine(Regex.IsMatch(args[0], "^a+$") ? "match" : "no match");
