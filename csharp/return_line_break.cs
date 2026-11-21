static long Total(long a, long b)
{
    return // CONTROL! return a + b;
        a + b; // BREAK!
}

Console.WriteLine(Total(2, 3));
