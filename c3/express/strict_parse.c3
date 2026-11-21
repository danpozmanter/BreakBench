// LEVEL: STD

import std::io;

fn int main(String[] args)
{
	if (catch args[1].to_long())
	{
		io::printn("invalid");
	}
	else
	{
		io::printn("valid");
	}
	return 0;
}
