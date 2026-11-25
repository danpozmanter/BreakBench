static int ParseOrder(string line)
{
    var parts = line.Split(',');
    return int.Parse(parts[2]); // BREAK!
    // CONTROL! return int.Parse(parts[1]);
}

try
{
    Console.WriteLine(ParseOrder("widget,5"));
}
catch (Exception)
{
    Console.WriteLine("invalid order");
}
