// LEVEL: STD

import std::io;
import std::thread;

int[10] slots;

fn int fill(void* arg)
{
	int start = (int)(iptr)arg;
	for (int i = start; i < start + 5; i++) slots[i] = i;
	return 0;
}

fn int main(String[] args)
{
	Thread a;
	Thread b;
	a.create(&fill, (void*)(iptr)0)!!;
	b.create(&fill, (void*)(iptr)5)!!;
	(void)a.join();
	(void)b.join();
	int sum = 0;
	foreach (x : slots) sum += x;
	io::printn(sum);
	return 0;
}
