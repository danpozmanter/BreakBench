// LEVEL: STD

using System.Diagnostics;
using System.Runtime.InteropServices;

var done = new TaskCompletionSource();
using var reg = PosixSignalRegistration.Create(PosixSignal.SIGTERM, ctx => { ctx.Cancel = true; done.SetResult(); });
Process.Start("kill", $"-TERM {Environment.ProcessId}")!.WaitForExit();
await done.Task;
Console.WriteLine("cleaned up");
