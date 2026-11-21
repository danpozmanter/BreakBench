import std::io;
import std::thread;

Mutex a;
Mutex b;

fn int forward(void* arg)
{
	a.lock();
	thread::sleep_ms(100);
	b.lock();
	b.unlock();
	a.unlock();
	return 0;
}

fn int backward(void* arg)
{
	b.lock();
	thread::sleep_ms(100);
	a.lock();
	a.unlock();
	b.unlock();
	return 0;
}

fn int main(String[] args)
{
	a.init()!!;
	b.init()!!;
	Thread t1;
	Thread t2;
	t1.create(&forward, null)!!;
	t2.create(&backward, null)!!;
	(void)t1.join();
	(void)t2.join();
	io::printn("finished");
	return 0;
}
