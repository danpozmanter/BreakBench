// LEVEL: LANGUAGE

int v = int.Parse(args[0]);
try
{
    _ = checked((byte)v);
    Console.WriteLine("fits");
}
catch (OverflowException)
{
    Console.WriteLine("does not fit");
}
