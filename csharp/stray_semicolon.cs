Console.WriteLine(Size(int.Parse(args[0])));
Console.WriteLine(Size(int.Parse(args[1])));

static string Size(int n)
{
    string label = "small";
    if (n > 5); // CONTROL! if (n > 5)
    {
        label = "big";
    }
    return label;
}
