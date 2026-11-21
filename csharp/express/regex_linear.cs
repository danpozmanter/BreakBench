// LEVEL: STD

using System.Text.RegularExpressions;

var re = new Regex("^(a+)+$", RegexOptions.NonBacktracking);
Console.WriteLine(re.IsMatch("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa!") ? "match" : "no match");
