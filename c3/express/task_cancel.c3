// LEVEL: STD

import std::io;
import std::thread;
import std::atomic;

Atomic{bool} cancelled;

fn int spin(void* arg)
{
	while (!cancelled.load()) thread::sleep_ms(1);
	return 0;
}

fn int main(String[] args)
{
	Thread t;
	t.create(&spin, null)!!;
	thread::sleep_ms(20);
	cancelled.store(true);
	(void)t.join();
	io::printn("stopped");
	return 0;
}
