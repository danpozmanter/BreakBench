// LEVEL: STD

using System.Text.RegularExpressions;

var re = new Regex("^[a-z]+[0-9]{2}$");
Console.WriteLine($"{re.IsMatch("abc12")} {re.IsMatch("abc1")}".ToLowerInvariant());
