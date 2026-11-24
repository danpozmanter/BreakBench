import std::io;
import std::thread;

String[] items;
long total;
// CONTROL! bool failed;

fn int add_all(void* arg)
{
	foreach (item : items) total += item.to_long()!!; // CONTROL! foreach (item : items) { if (try v = item.to_long()) { total += v; } else { failed = true; } }
	return 0;
}

fn int main(String[] args)
{
	items = args[1..];
	Thread worker;
	worker.create(&add_all, null)!!;
	(void)worker.join();
	io::printfn("total %d", total); // CONTROL! if (failed) { io::printn("failed"); } else { io::printfn("total %d", total); }
	return 0;
}
