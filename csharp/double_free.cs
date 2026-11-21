Rec? a = new Rec(0);
a = null;
a = null;
var x = new Rec(1);
var y = new Rec(2);
Console.WriteLine(x.Value);

class Rec(long value)
{
    public long Value = value;
}
