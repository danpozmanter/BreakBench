import std::io;
import std::thread;
import std::thread::channel;

alias Lists = UnbufferedChannel{int[]};
alias Signal = UnbufferedChannel{bool};

struct Pipes
{
	Lists* lists;
	Signal* go_on;
}

fn int worker(void* arg)
{
	Pipes* pipes = arg;
	int[] received = pipes.lists.pop()!!;
	(void)pipes.go_on.pop();
	io::printn(received[0]);
	return 0;
}

fn int main(String[] args)
{
	Pipes pipes = {
		channel::create_unbuffered{int[]}(mem)!!,
		channel::create_unbuffered{bool}(mem)!!,
	};
	Thread t;
	t.create(&worker, &pipes)!!;
	int[] list = mem::new_array(int, 3);
	list[0] = 1;
	list[1] = 2;
	list[2] = 3;
	(void)pipes.lists.push(list); // CONTROL! int[] copy = mem::new_array(int, 3); copy[..] = list[..]; (void)pipes.lists.push(copy);
	list[0] = 99;
	(void)pipes.go_on.push(true);
	(void)t.join();
	return 0;
}
