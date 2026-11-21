Console.WriteLine(Describe(new Square()));

static string Describe(Shape s) => s switch { Circle => "circle", _ => "other" };
static string Bad(Shape s) => s switch { _ => "other", Circle => "circle" }; // BREAK!

abstract record Shape;
record Circle : Shape;
record Square : Shape;
