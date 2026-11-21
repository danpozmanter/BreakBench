var w = new StreamWriter("/tmp/bb_close.txt");
w.Write("a");
w.Close();
w.Write("b"); // BREAK!
Console.WriteLine("ok");
