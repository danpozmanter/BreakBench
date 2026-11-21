// LEVEL: STD

var p = Path.GetFullPath(Path.Combine("/srv/app", "../../etc/passwd"));
Console.WriteLine(p.StartsWith("/srv/app/") ? "inside" : "outside");
