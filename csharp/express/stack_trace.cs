// LEVEL: STD

using System.Diagnostics;
using System.Runtime.CompilerServices;

Console.WriteLine(Inner().Contains("Inner") ? "inner" : "missing");

[MethodImpl(MethodImplOptions.NoInlining)]
static string Inner() => new StackTrace().ToString();
