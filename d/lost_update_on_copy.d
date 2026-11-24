import std.stdio;

struct Account { int balance; }

void main()
{
    Account[] accounts = [Account(100)];
    foreach (acct; accounts) acct.balance += 50; // CONTROL! foreach (ref acct; accounts) acct.balance += 50;
    writeln(accounts[0].balance);
}
