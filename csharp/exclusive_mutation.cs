var a = new Account { Balance = 100 };
Transfer(a, a, 30);
Console.WriteLine(a.Balance);

static void Transfer(Account from, Account to, int amount)
{
    var newFrom = from.Balance - amount;
    var newTo = to.Balance + amount;
    from.Balance = newFrom;
    to.Balance = newTo;
}

class Account { public int Balance; }
