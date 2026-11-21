// LEVEL: LANGUAGE

import std::io;

fn int main(String[] args)
{
	const X = 1;
	X = 2; // REJECT!
	io::printn(X);
	return 0;
}
