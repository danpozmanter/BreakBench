var ledger = new Ledger();
try
{
    await Task.Run(ledger.Post);
}
catch (InvalidOperationException e)
{
    Console.Error.WriteLine($"worker failed: {e.Message}");
}
Console.WriteLine(ledger.Balanced ? "balanced" : "unbalanced");

class Ledger
{
    private readonly Lock _lock = new();
    private int _debits;
    private int _credits;

    public void Post()
    {
        lock (_lock)
        {
            _debits += 50;
            if (_debits > 0) throw new InvalidOperationException("crash mid-update"); // CONTROL! if (_debits > 0) { _debits -= 50; throw new InvalidOperationException("crash mid-update"); }
            _credits += 50;
        }
    }

    public bool Balanced
    {
        get
        {
            lock (_lock) { return _debits == _credits; }
        }
    }
}
