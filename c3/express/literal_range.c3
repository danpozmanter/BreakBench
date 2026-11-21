// LEVEL: LANGUAGE

import std::io;

fn int main(String[] args)
{
	char ok = 100;
	char too_big = 300; // REJECT!
	io::printn(ok);
	return 0;
}
