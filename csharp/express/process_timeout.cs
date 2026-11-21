// LEVEL: STD

using System.Diagnostics;

using var p = Process.Start("sleep", "10");
if (!p.WaitForExit(100))
{
    p.Kill();
    p.WaitForExit();
    Console.WriteLine("killed");
}
else
{
    Console.WriteLine("finished");
}
