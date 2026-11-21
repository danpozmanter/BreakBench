var total = new Meters(2) + new Meters(3);
var wrong = new Meters(2) + new Seconds(3); // BREAK!
Console.WriteLine(total.V);

readonly record struct Meters(double V)
{
    public static Meters operator +(Meters a, Meters b) => new(a.V + b.V);
}

readonly record struct Seconds(double V);
