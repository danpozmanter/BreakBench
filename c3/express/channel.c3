// LEVEL: STD

import std::io;
import std::thread;
import std::collections::blockingqueue;

alias Queue = LinkedBlockingQueue{int};

fn int work(void* arg)
{
	Queue* q = arg;
	for (int v = 1; v <= 3; v++) q.push(v);
	return 0;
}

fn int main(String[] args)
{
	Queue q;
	q.init(mem);
	Thread t;
	t.create(&work, &q)!!;
	int a = q.poll();
	int b = q.poll();
	int c = q.poll();
	(void)t.join();
	io::printfn("%d %d %d", a, b, c);
	return 0;
}
