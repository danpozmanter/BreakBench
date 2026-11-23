import std::io;
import std::thread;

Mutex a;
Mutex b;
Mutex gate;
int arrivals;

fn void rendezvous() {
	gate.lock(); arrivals++; gate.unlock();
	while (true) {
		gate.lock(); bool open = arrivals == 2; gate.unlock();
		if (open) break;
	}
}

fn int forward(void* arg)
{
	a.lock();
	rendezvous();
	b.lock();
	b.unlock();
	a.unlock();
	return 0;
}

fn int backward(void* arg)
{
	b.lock();
	rendezvous();
	a.lock();
	a.unlock();
	b.unlock();
	return 0;
}

fn int main(String[] args)
{
	a.init()!!;
	b.init()!!;
	gate.init()!!;
	Thread t1;
	Thread t2;
	t1.create(&forward, null)!!;
	t2.create(&backward, null)!!;
	(void)t1.join();
	(void)t2.join();
	io::printn("finished");
	return 0;
}
