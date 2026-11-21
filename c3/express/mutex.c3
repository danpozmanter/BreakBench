// LEVEL: STD

import std::io;
import std::thread;

Mutex lock;
long counter;

fn int work(void* arg)
{
	for (int i = 0; i < 100000; i++)
	{
		lock.lock();
		counter++;
		lock.unlock();
	}
	return 0;
}

fn int main(String[] args)
{
	lock.init()!!;
	Thread a;
	Thread b;
	a.create(&work, null)!!;
	b.create(&work, null)!!;
	(void)a.join();
	(void)b.join();
	io::printn(counter);
	return 0;
}
