import std::io;
import std::thread;

Mutex lock;
int balance;

fn void deposit(int amount)
{
	lock.lock();
	defer lock.unlock();
	balance += amount;
}

fn int main(String[] args)
{
	lock.init()!!;
	lock.lock(); // BREAK!
	deposit(10);
	lock.unlock(); // BREAK!
	io::printn("done");
	return 0;
}
