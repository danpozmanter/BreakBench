// LEVEL: LANGUAGE

import std::io;

fn int main(String[] args)
{
	int count = 0;
	count = 5;
	count == 5; // REJECT!
	io::printn(count);
	return 0;
}
