using System.Text.RegularExpressions;

Console.WriteLine(Regex.IsMatch(args[0], "^[a-z]+$") ? "accepted" : "rejected"); // CONTROL! Console.WriteLine(Regex.IsMatch(args[0], @"^[a-z]+\z") ? "accepted" : "rejected");
