using (var w = new StreamWriter("/dev/full"))
{
    w.WriteLine("data");
}
Console.WriteLine("saved");
