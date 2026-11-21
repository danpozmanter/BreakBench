// LEVEL: LANGUAGE

long n = long.Parse(args[0]);
try
{
    _ = checked(n + 1);
    Console.WriteLine("ok");
}
catch (OverflowException)
{
    Console.WriteLine("overflow");
}
