import std::io;
import std::thread;
import std::thread::channel;

alias Answer = UnbufferedChannel{long};

fn int worker(void* arg)
{
	Answer* answer = arg;
	long n = "x".to_long()!!;
	(void)answer.push(n);
	return 0;
}

fn int main(String[] args)
{
	Answer* answer = channel::create_unbuffered{long}(mem)!!;
	Thread t;
	t.create(&worker, answer)!!;
	(void)t.detach();
	io::printn(answer.pop()!!);
	return 0;
}
