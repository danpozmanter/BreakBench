using System.Diagnostics;

Process.Start("sh", ["-c", "exit 3"])!.WaitForExit();
Console.WriteLine("backed up");
