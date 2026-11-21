// LEVEL: LANGUAGE

import std::io;

fn int main(String[] args)
{
	io::printn("before");
	assert(args.len + 1 == 3);
	io::printn("after");
	return 0;
}
