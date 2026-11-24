static void Save(string path) => File.WriteAllText(path, "data");

Save("/dev/null/out.txt"); // CONTROL! try { Save("/dev/null/out.txt"); Console.WriteLine("saved"); } catch (IOException) { Console.WriteLine("failed"); }
Console.WriteLine("saved"); // BREAK!
