// LEVEL: STD

var path = Path.GetTempFileName();
File.WriteAllText(path, "ok");
Console.WriteLine(File.ReadAllText(path));
File.Delete(path);
