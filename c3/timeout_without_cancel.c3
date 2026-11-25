import std::io;
import std::thread;

Mutex lock;
ConditionVariable changed;
bool gate_open;
bool attempt_done;
int balance = 100;

fn void charge()
{
	lock.lock();
	while (!gate_open) changed.wait(&lock);
	balance -= 30;
	lock.unlock();
}

fn int attempt(void* arg)
{
	charge();
	lock.lock();
	attempt_done = true;
	changed.broadcast();
	lock.unlock();
	return 0;
}

fn int main(String[] args)
{
	lock.init()!!;
	changed.init()!!;
	Thread t;
	t.create(&attempt, null)!!;
	lock.lock();
	if (!attempt_done) (void)changed.wait_timeout(&lock, 100);
	bool timed_out = !attempt_done;
	if (timed_out)
	{
		gate_open = true;
		changed.broadcast();
	}
	lock.unlock();
	if (timed_out) charge(); // BREAK!
	(void)t.join();
	io::printn(balance);
	return 0;
}
