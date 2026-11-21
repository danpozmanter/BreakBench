// LEVEL: STD

var worker = Task.Run(() => throw new InvalidOperationException("boom"));
try { await worker; } catch (InvalidOperationException) { Console.WriteLine("worker crashed"); }
