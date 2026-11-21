static IntBox Make()
{
    var local = new IntBox { Value = 4242 };
    return local;
}

static int Clobber() => Enumerable.Repeat(7, 64).Last();

var r = Make();
Clobber();
Console.WriteLine(r.Value);

class IntBox { public int Value; }
