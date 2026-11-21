var bank = new Bank();
bank.Run();
Console.WriteLine("done");

class Bank
{
    private readonly Lock _lock = new();
    private int _balance;

    void Deposit(int amount)
    {
        lock (_lock) { _balance += amount; }
    }

    public void Run()
    {
        lock (_lock) { Deposit(10); }
    }
}
