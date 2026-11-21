// LEVEL: STD

import std::io;
import std::thread;

fn int slow(void* arg)
{
	thread::sleep_ms(50);
	return 7;
}

fn int main(String[] args)
{
	Thread t;
	t.create(&slow, null)!!;
	io::printn("started");
	io::printn(t.join()!!);
	return 0;
}
