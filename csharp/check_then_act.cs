var gate = new object();
using var checkedGate = new Barrier(2);
var claimed = false;
var winners = 0;

void Claim()
{
    bool available;
    lock (gate) { available = !claimed; } // BREAK!
    // CONTROL! lock (gate) { available = !claimed; if (available) claimed = true; }
    checkedGate.SignalAndWait();
    if (available) lock (gate) { claimed = true; winners++; }
}

var a = new Thread(Claim);
var b = new Thread(Claim);
a.Start(); b.Start(); a.Join(); b.Join();
Console.WriteLine(winners);
