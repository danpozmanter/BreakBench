// LEVEL: LANGUAGE

double x = double.NaN;
try
{
    _ = checked((long)x);
    Console.WriteLine("fits");
}
catch (OverflowException)
{
    Console.WriteLine("does not fit");
}
