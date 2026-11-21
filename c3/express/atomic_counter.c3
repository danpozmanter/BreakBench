// LEVEL: STD

import std::io;
import std::thread;
import std::atomic;

Atomic{long} counter;

fn int work(void* arg)
{
	for (int i = 0; i < 100000; i++) counter.add(1);
	return 0;
}

fn int main(String[] args)
{
	Thread a;
	Thread b;
	a.create(&work, null)!!;
	b.create(&work, null)!!;
	(void)a.join();
	(void)b.join();
	io::printn(counter.load());
	return 0;
}
