// LEVEL: STD

long counter = 0;
void Work() { for (int i = 0; i < 100_000; i++) Interlocked.Increment(ref counter); }
var a = new Thread(Work);
var b = new Thread(Work);
a.Start(); b.Start();
a.Join(); b.Join();
Console.WriteLine(Interlocked.Read(ref counter));
