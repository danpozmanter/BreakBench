// LEVEL: LANGUAGE

var a = new P { X = 1 };
var b = a;
b.X = 9;
Console.WriteLine(a.X);

struct P
{
    public int X;
}
