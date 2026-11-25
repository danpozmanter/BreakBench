Console.WriteLine(new Square().Describe());

class Shape
{
    public int Area() => 0; // CONTROL! public virtual int Area() => 0;
    public string Describe() => $"area {Area()}";
}

class Square : Shape
{
    public int Area() => 4; // CONTROL! public override int Area() => 4;
}
