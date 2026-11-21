// LEVEL: STD

using System.Diagnostics;

var psi = new ProcessStartInfo("echo") { RedirectStandardOutput = true };
psi.ArgumentList.Add("hi; touch /tmp/bb_x");
using var p = Process.Start(psi)!;
Console.Write(p.StandardOutput.ReadToEnd());
p.WaitForExit();
