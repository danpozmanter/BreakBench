import std::io;
import std::thread;

fn int worker(void* arg)
{
	long* counter = arg;
	for (int i = 0; i < 1_000_000; i++) *counter += 1;
	return 0;
}

fn int main(String[] args)
{
	long counter;
	Thread[8] threads;
	foreach (&t : threads) t.create(&worker, &counter)!!;
	foreach (&t : threads) t.join()!!;
	io::printfn("%d", counter);
	return 0;
}
