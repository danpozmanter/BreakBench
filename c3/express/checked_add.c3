// LEVEL: STD

import std::io;

fn int main(String[] args)
{
	long n = args[1].to_long()!!;
	if (catch n.overflow_add(1))
	{
		io::printn("overflow");
	}
	else
	{
		io::printn("ok");
	}
	return 0;
}
