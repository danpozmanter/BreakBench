// LEVEL: STD

import std::io;
import std::collections::deque;

fn int main(String[] args)
{
	Deque{int} d;
	d.init(mem);
	d.push(1);
	d.push_front(0);
	d.push(2);
	int front = d.pop_first()!!;
	int back = d.pop()!!;
	io::printfn("%d %d", front, back);
	return 0;
}
