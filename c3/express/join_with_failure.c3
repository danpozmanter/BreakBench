// LEVEL: STD

import std::io;
import std::thread;

faultdef BAD_INPUT;

fn int work(void* arg)
{
	return 1;
}

fn int main(String[] args)
{
	Thread t;
	t.create(&work, null)!!;
	if (t.join()!! != 0) io::printn("worker failed: bad input");
	return 0;
}
