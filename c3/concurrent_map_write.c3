import std::io;
import std::thread;
import std::collections::map;

alias Table = HashMap{long, long};

struct Job
{
	Table* table;
	long base;
}

fn int writer(void* arg)
{
	Job* job = arg;
	for (long k = 0; k < 100_000; k++) job.table.set(job.base + k, k);
	return 0;
}

fn int main(String[] args)
{
	Table table;
	table.init(mem);
	Job[8] jobs;
	Thread[8] threads;
	for (int i = 0; i < 8; i++)
	{
		jobs[i] = { &table, (long)i * 100_000 };
		threads[i].create(&writer, &jobs[i])!!;
	}
	foreach (&t : threads) t.join()!!;
	io::printfn("%d", table.len());
	return 0;
}
