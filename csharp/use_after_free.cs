Rec? a = new Rec(1234);
Rec b = a;
a = null;
var c = new Rec(6666);
Console.WriteLine(b.Value);

class Rec(long value)
{
    public long Value = value;
}
