var a = new Lock();
var b = new Lock();
using var ready = new Barrier(2);

void Transfer(Lock first, Lock second)
{
    lock (first)
    {
        ready.SignalAndWait(); // BREAK!
        lock (second) { }
    }
}

var t1 = new Thread(() => Transfer(a, b));
var t2 = new Thread(() => Transfer(b, a)); // CONTROL! var t2 = new Thread(() => Transfer(a, b));
t1.Start();
t2.Start();
t1.Join();
t2.Join();
Console.WriteLine("finished");
