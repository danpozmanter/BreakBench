using System.Diagnostics;

File.Delete("/tmp/bb_pwned");
var p = Process.Start(new ProcessStartInfo("echo", args[0]) { RedirectStandardOutput = true });
p!.WaitForExit();
Console.WriteLine(File.Exists("/tmp/bb_pwned") ? "injected" : "safe");
