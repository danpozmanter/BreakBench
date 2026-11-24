import std::io;
import std::thread;

Mutex lock;
long debits;
long credits;

fn int post(void* arg)
{
	lock.lock();
	defer lock.unlock();
	debits += 50;
	if (debits > 0) abort("crash mid-update"); // CONTROL! if (debits > 0) { debits -= 50; return 1; }
	credits += 50;
	return 0;
}

fn int main(String[] args)
{
	lock.init()!!;
	Thread worker;
	worker.create(&post, null)!!;
	(void)worker.join();
	lock.lock();
	defer lock.unlock();
	io::printn(debits == credits ? "balanced" : "unbalanced");
	return 0;
}
