// LEVEL: STD

using System.Collections;

var b = new BitArray(1024);
b[1000] = true;
Console.WriteLine($"{b[1000]} {b[999]}".ToLowerInvariant());
