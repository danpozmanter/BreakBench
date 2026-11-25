import std::io;
import std::thread;
import std::thread::channel;

alias Answers = UnbufferedChannel{int};

fn int worker(void* arg)
{
	Answers* answers = arg;
	(void)answers.push(42);
	return 0;
}

fn int first_answer(Thread[2]* workers)
{
	Answers* answers = channel::create_unbuffered{int}(mem)!!;
	foreach (&w : *workers) w.create(&worker, answers)!!;
	return answers.pop()!!;
}

fn int main(String[] args)
{
	Thread[2] workers;
	io::printn(first_answer(&workers));
	foreach (w : workers) (void)w.join();
	io::printn("done");
	return 0;
}
