import std.stdio;

struct Account { int balance; }

void transfer(ref Account from, ref Account to, int amount)
{
    int newFrom = from.balance - amount;
    int newTo = to.balance + amount;
    from.balance = newFrom;
    to.balance = newTo;
}

void main()
{
    auto a = Account(100);
    transfer(a, a, 30);
    writeln(a.balance);
}
