var woken = new object();
lock (woken)
{
    Monitor.Pulse(woken);
}
var worker = new Thread(() =>
{
    lock (woken)
    {
        Monitor.Wait(woken);
    }
    Console.WriteLine("done");
});
worker.Start();
worker.Join();
