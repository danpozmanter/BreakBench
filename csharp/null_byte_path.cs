Directory.CreateDirectory("/tmp/bb_files");
File.WriteAllText("/tmp/bb_files/report.txt", "secret\n");

var name = "report.txt\0.png";
if (!name.EndsWith(".png", StringComparison.Ordinal))
{
    Console.WriteLine("rejected");
    return;
}
try
{
    Console.Write(File.ReadAllText("/tmp/bb_files/" + name));
}
catch (Exception)
{
    Console.WriteLine("rejected");
}
