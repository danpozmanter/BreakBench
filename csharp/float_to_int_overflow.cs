double x = double.Parse(args[0]);
long v = (long)x; // CONTROL! var v = (System.Numerics.BigInteger)x;
Console.WriteLine(v);
