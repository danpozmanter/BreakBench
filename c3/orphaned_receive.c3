import std::io;
import std::thread;
import std::thread::channel;
// CONTROL! struct Reply { long value; bool ok; }

alias Answer = UnbufferedChannel{long}; // CONTROL! alias Answer = UnbufferedChannel{Reply};

fn int worker(void* arg)
{
	Answer* answer = arg;
	long n = "x".to_long()!!; // CONTROL! long? parsed = "x".to_long();
	(void)answer.push(n); // CONTROL! if (try n = parsed) { (void)answer.push({ n, true }); } else { (void)answer.push({ 0, false }); }
	return 0;
}

fn int main(String[] args)
{
	Answer* answer = channel::create_unbuffered{long}(mem)!!; // CONTROL! Answer* answer = channel::create_unbuffered{Reply}(mem)!!;
	Thread t;
	t.create(&worker, answer)!!;
	(void)t.detach();
	io::printn(answer.pop()!!); // CONTROL! Reply r = answer.pop()!!; if (r.ok) { io::printn(r.value); } else { io::printn("failed"); }
	return 0;
}
