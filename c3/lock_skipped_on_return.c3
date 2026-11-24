import std::io;
import std::thread;

Mutex lock;
int balance = 100;

fn void withdraw(int amount)
{
	lock.lock();
	if (amount > balance) return; // CONTROL! if (amount > balance) { lock.unlock(); return; }
	balance -= amount;
	lock.unlock();
}

fn int worker(void* arg)
{
	withdraw(30);
	return 0;
}

fn int main(String[] args)
{
	lock.init()!!;
	withdraw(500);
	Thread t;
	t.create(&worker, null)!!;
	(void)t.join();
	io::printfn("%d", balance);
	return 0;
}
