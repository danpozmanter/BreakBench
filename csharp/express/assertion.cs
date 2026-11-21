// LEVEL: STD

using System.Diagnostics;

Console.WriteLine("before");
Console.Out.Flush();
Debug.Assert(args.Length + 1 == 3);
Console.WriteLine("after");
