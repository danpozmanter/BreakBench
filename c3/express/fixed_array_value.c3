// LEVEL: LANGUAGE

import std::io;

fn int main(String[] args)
{
	int[3] a = { 1, 2, 3 };
	int[3] b = a;
	b[0] = 9;
	io::printn(a[0]);
	return 0;
}
