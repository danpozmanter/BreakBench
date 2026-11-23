#nullable enable
var decoded = new User(null);
Console.WriteLine(decoded.Name.Length);
record User(string? Name);
