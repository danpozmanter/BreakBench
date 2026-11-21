// LEVEL: LANGUAGE

Step(true);
try { Step(false); } catch (KindB) { Console.WriteLine("passed B"); }

static void Step(bool a)
{
    try
    {
        if (a) throw new KindA(); else throw new KindB();
    }
    catch (KindA)
    {
        Console.WriteLine("caught A");
    }
}

class KindA : Exception;
class KindB : Exception;
