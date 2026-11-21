// LEVEL: LANGUAGE

import std::io;

fn int main(String[] args)
{
	long i = -1;
	ulong n = 3;
	bool wrong = i < n; // REJECT!
	io::printn(i < (long)n ? "less" : "not less");
	return 0;
}
