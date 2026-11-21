import std::io;
import std::thread;
import std::thread::channel;

alias Answers = UnbufferedChannel{long[]};

struct Job
{
	Answers* out;
	long seed;
}

fn int answer(void* arg)
{
	Job* job = arg;
	long[] buf = mem::new_array(long, 8192);
	foreach (&x : buf) *x = job.seed;
	(void)job.out.push(buf);
	return 0;
}

fn int main(String[] args)
{
	long rounds = args[1].to_long()!!;
	for (long i = 0; i < rounds; i++)
	{
		Answers* out = channel::create_unbuffered{long[]}(mem)!!;
		for (long w = 0; w < 2; w++)
		{
			Job* job = mem::new(Job, { .out = out, .seed = i + w });
			Thread t;
			t.create(&answer, job)!!;
			(void)t.detach();
		}
		long[] first = out.pop()!!;
		assert(first.len == 8192);
	}
	io::printn("done");
	return 0;
}
