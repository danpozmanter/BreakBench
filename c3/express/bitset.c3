// LEVEL: STD

import std::io;
import std::collections::bitset;

alias Bits = BitSet{1024};

fn int main(String[] args)
{
	Bits b;
	b.set(1000);
	io::printfn("%s %s", b.get(1000), b.get(999));
	return 0;
}
