// LEVEL: STD

using System.Diagnostics;

using var p = Process.Start("false")!;
p.WaitForExit();
Console.WriteLine(p.ExitCode);
