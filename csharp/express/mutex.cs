// LEVEL: LANGUAGE

object gate = new();
long counter = 0;
void Work() { for (int i = 0; i < 100_000; i++) lock (gate) counter++; }
var a = new Thread(Work);
var b = new Thread(Work);
a.Start(); b.Start();
a.Join(); b.Join();
Console.WriteLine(counter);
