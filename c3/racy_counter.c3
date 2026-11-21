import std::io;
import std::thread;

fn int add(void* arg)
{
	long* count = arg;
	for (int i = 0; i < 1_000_000; i++) (*count)++;
	return 0;
}

fn int main(String[] args)
{
	long count = 0;
	Thread a;
	Thread b;
	a.create(&add, &count)!!;
	b.create(&add, &count)!!;
	a.join()!!;
	b.join()!!;
	io::printn(count);
	return 0;
}
