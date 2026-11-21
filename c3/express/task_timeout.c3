// LEVEL: STD

import std::io;
import libc;
import std::thread;
import std::time;
import std::collections::blockingqueue;

alias Queue = LinkedBlockingQueue{int};

fn int slow(void* arg)
{
	Queue* q = arg;
	thread::sleep_ms(5000);
	q.push(1);
	return 0;
}

fn int main(String[] args)
{
	Queue q;
	q.init(mem);
	Thread t;
	t.create(&slow, &q)!!;
	if (catch q.poll_timeout(time::ms(100)))
	{
		io::printn("timed out");
	}
	else
	{
		io::printn("done");
	}
	libc::exit(0);
	return 0;
}
