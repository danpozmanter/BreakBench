static void Save(string path) => File.WriteAllText(path, "data");

Save("/nonexistent/dir/out.txt");
Console.WriteLine("saved");
