// LEVEL: STD

long n = long.Parse(args[0]);
try
{
    var buf = GC.AllocateUninitializedArray<byte>(checked((int)n));
    Console.WriteLine("allocated");
}
catch (Exception e) when (e is OutOfMemoryException or OverflowException)
{
    Console.WriteLine("allocation failed");
}
