var account = new Account();
await Task.WhenAll(account.Withdraw(80), account.Withdraw(80));
Console.WriteLine(account.Balance);

class Account
{
    private readonly object gate = new();

    public int Balance { get; private set; } = 100;

    public async Task Withdraw(int amount)
    {
        if (Balance >= amount)
        {
            await Task.Delay(10);
            lock (gate) Balance -= amount;
        }
    }
}
