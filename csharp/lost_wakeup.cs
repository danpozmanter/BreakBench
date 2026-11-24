var woken = new object();
// CONTROL! var ready = false;
lock (woken)
{
    Monitor.Pulse(woken); // CONTROL! ready = true; Monitor.Pulse(woken);
}
var worker = new Thread(() =>
{
    lock (woken)
    {
        Monitor.Wait(woken); // CONTROL! while (!ready) Monitor.Wait(woken);
    }
    Console.WriteLine("done");
});
worker.Start();
worker.Join();
