import std::io;
import std::thread;
import std::thread::channel;

alias Answer = UnbufferedChannel{long};

fn int worker(void* arg)
{
	Answer* answer = arg;
	// to_long answers an Optional, so the worker checks it before sending.
	if (try n = "x".to_long()) (void)answer.push(n); // CONTROL! if (try n = "x".to_long()) { (void)answer.push(n); } else { answer.close(); }
	return 0;
}

fn int main(String[] args)
{
	Answer* answer = channel::create_unbuffered{long}(mem)!!;
	Thread t;
	t.create(&worker, answer)!!;
	(void)t.detach();
	// pop answers an Optional, so main checks it too.
	if (try n = answer.pop())
	{
		io::printn(n);
	}
	else
	{
		io::printn("failed");
	}
	return 0;
}
