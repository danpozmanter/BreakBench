// LEVEL: STD

import std::io;
import std::collections::priorityqueue;

alias Queue = PriorityQueue{int};

fn int main(String[] args)
{
	Queue q;
	q.push(3);
	q.push(1);
	q.push(2);
	int a = q.pop()!!;
	int b = q.pop()!!;
	int c = q.pop()!!;
	io::printfn("%d %d %d", a, b, c);
	return 0;
}
