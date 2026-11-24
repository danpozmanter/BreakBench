var account = new Account();
account.Withdraw(500);
var worker = new Thread(() => account.Withdraw(30));
worker.Start();
worker.Join();
Console.WriteLine(account.Balance);

class Account
{
    private readonly object gate = new();

    public int Balance { get; private set; } = 100;

    public void Withdraw(int amount)
    {
        Monitor.Enter(gate);
        if (amount > Balance)
        {
            return; // CONTROL! Monitor.Exit(gate); return;
        }
        Balance -= amount;
        Monitor.Exit(gate);
    }
}
