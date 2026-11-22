import std::io;
import std::thread;
import std::time;

fn int job(void* arg)
{
	thread::sleep_ms(500);
	return 0;
}

fn int main(String[] args)
{
	Clock start = clock::now();
	Thread a;
	Thread b;
	a.create(&job, null)!!;
	b.create(&job, null)!!;
	(void)a.join();
	(void)b.join();
	io::printn((long)start.mark() < 800_000_000 ? "concurrent" : "serial");
	return 0;
}
