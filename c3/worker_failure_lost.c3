import std::io;
import std::thread;

String[] items;
long total;

fn int add_all(void* arg)
{
	foreach (item : items) total += item.to_long()!!;
	return 0;
}

fn int main(String[] args)
{
	items = args[1..];
	Thread worker;
	worker.create(&add_all, null)!!;
	(void)worker.join();
	io::printfn("total %d", total);
	return 0;
}
