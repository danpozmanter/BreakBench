// LEVEL: LANGUAGE

import std::io;

fn int main(String[] args)
{
	long n = args[1].to_long()!!;
	io::printn(n + 1);
	return 0;
}
