var c = Color.Green;
Console.WriteLine(Name(7)); // BREAK!
Console.WriteLine(Name(c));

static string Name(Color c) => c switch
{
    Color.Red => "red",
    Color.Green => "green",
    Color.Blue => "blue",
    _ => "",
};

enum Color { Red, Green, Blue }
