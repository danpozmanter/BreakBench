static string Name(Color c) => c switch
{
    Color.Red => "red",
    Color.Green => "green",
    // CONTROL! Color.Blue => "blue",
};

Console.WriteLine(Name((Color)int.Parse(args[0])));

enum Color { Red, Green, Blue }
