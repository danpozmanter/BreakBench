var accounts = new List<Account> { new Account { Balance = 100 } };
foreach (var acct in accounts) acct.Balance += 50;
Console.WriteLine(accounts[0].Balance);

class Account
{
    public int Balance;
}
