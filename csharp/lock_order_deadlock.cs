var a = new Lock();
var b = new Lock();

void Transfer(Lock first, Lock second)
{
    lock (first)
    {
        Thread.Sleep(100);
        lock (second) { }
    }
}

var t1 = new Thread(() => Transfer(a, b));
var t2 = new Thread(() => Transfer(b, a));
t1.Start();
t2.Start();
t1.Join();
t2.Join();
Console.WriteLine("finished");
