import std::io;

struct Account
{
	int balance;
}

fn int main(String[] args)
{
	Account[1] accounts = { { 100 } };
	foreach (acct : accounts) acct.balance += 50;
	io::printfn("%d", accounts[0].balance);
	return 0;
}
