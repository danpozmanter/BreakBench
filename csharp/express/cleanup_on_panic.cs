// LEVEL: LANGUAGE

try { Work(); } catch (InvalidOperationException) { Console.WriteLine("recovered"); }

static void Work()
{
    try { throw new InvalidOperationException("boom"); }
    finally { Console.WriteLine("cleanup"); }
}
