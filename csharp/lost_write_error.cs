using (var w = new StreamWriter("/dev/full")) // CONTROL! try { using (var w = new StreamWriter("/dev/full")) { w.WriteLine("data"); } Console.WriteLine("saved"); } catch (IOException) { Console.WriteLine("failed"); }
{ // BREAK!
    w.WriteLine("data"); // BREAK!
} // BREAK!
Console.WriteLine("saved"); // BREAK!
