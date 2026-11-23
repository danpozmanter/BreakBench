using System.Diagnostics;
using System.Text;

var child = Process.Start(new ProcessStartInfo("sh", ["-c", "printf HELLO-WO; sleep 0.2; printf RLD-1234"]) { RedirectStandardOutput = true })!;
var message = new byte[16];
child.StandardOutput.BaseStream.Read(message, 0, message.Length);
child.WaitForExit();
Console.WriteLine(Encoding.UTF8.GetString(message));
