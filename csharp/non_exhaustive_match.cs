static string Name(Color c) => c switch
{
    Color.Red => "red",
    Color.Green => "green",
};

Console.WriteLine(Name((Color)int.Parse(args[0])));

enum Color { Red, Green, Blue }
