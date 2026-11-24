import std::io;
import std::thread;

Mutex lock;
ConditionVariable woken;
// CONTROL! bool ready;

fn int worker(void* arg)
{
	lock.lock()!!;
	woken.wait(&lock)!!; // CONTROL! while (!ready) woken.wait(&lock)!!;
	lock.unlock();
	io::printn("done");
	return 0;
}

fn int main(String[] args)
{
	lock.init()!!;
	woken.init()!!;
	lock.lock()!!;
	woken.signal()!!; // CONTROL! ready = true; woken.signal()!!;
	lock.unlock();
	Thread t;
	t.create(&worker, null)!!;
	(void)t.join();
	return 0;
}
