import std::io;

struct Account { int balance; }

fn void transfer(Account* from, Account* to, int amount)
{
	int new_from = from.balance - amount;
	int new_to = to.balance + amount;
	from.balance = new_from;
	to.balance = new_to;
}

fn int main(String[] args)
{
	Account a = { 100 };
	transfer(&a, &a, 30);
	io::printn(a.balance);
	return 0;
}
