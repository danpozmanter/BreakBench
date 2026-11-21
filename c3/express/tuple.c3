// LEVEL: STD

import std::io;
import std::collections::pair;

fn Pair{int, String} pair()
{
	return { 1, "a" };
}

fn int main(String[] args)
{
	int n;
	String s;
	pair().unpack(&n, &s);
	io::printfn("%d %s", n, s);
	return 0;
}
