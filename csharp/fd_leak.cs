int n = int.Parse(args[0]);
File.WriteAllText("/tmp/bb_fd.txt", "x");
for (int i = 0; i < n; i++)
{
    var f = new FileStream("/tmp/bb_fd.txt", FileMode.Open, FileAccess.Read);
    f.ReadByte();
}
Console.WriteLine("done");
