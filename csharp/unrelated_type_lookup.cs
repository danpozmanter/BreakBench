List<int> ids = [10, 20, 30];
string id = args[0];
Console.WriteLine(ids.Contains(id) ? "found" : "missing"); // CONTROL! Console.WriteLine(ids.Contains(int.Parse(id)) ? "found" : "missing");
