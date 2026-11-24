using System.Diagnostics;

Process.Start("sh", ["-c", "exit 3"])!.WaitForExit(); // CONTROL! var p = Process.Start("sh", ["-c", "exit 3"])!; p.WaitForExit(); if (p.ExitCode != 0) { Console.WriteLine("backup failed"); return; }
Console.WriteLine("backed up");
