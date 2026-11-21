// LEVEL: LANGUAGE

import std::io;

struct Point
{
	int x;
}

fn int main(String[] args)
{
	Point a = { 1 };
	Point b = a;
	b.x = 9;
	io::printn(a.x);
	return 0;
}
