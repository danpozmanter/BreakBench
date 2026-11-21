import std::io;
import std::thread;
import std::atomic;

Atomic{int} saved;

fn int save(void* arg)
{
	thread::sleep_ms(50);
	saved.add(1);
	return 0;
}

fn int main(String[] args)
{
	Thread task;
	task.create(&save, null)!!; // CONTROL! task.create(&save, null)!!; (void)task.join();
	io::printn(saved.load());
	return 0;
}
