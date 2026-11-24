#nullable enable
var decoded = new User(null);
Console.WriteLine(decoded.Name.Length); // CONTROL! Console.WriteLine(decoded.Name is null ? "no name" : decoded.Name.Length.ToString());
record User(string? Name);
