// LEVEL: LANGUAGE

Shape s = new Circle();
Console.WriteLine(s.Describe());

class Shape
{
    public virtual string Describe() => "shape";
}

class Circle : Shape
{
    public override string Describe() => "circle";
    public override string Descibe() => "circle"; // REJECT!
}
