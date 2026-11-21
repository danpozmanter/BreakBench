// LEVEL: STD

import std::io;
import std::collections::map;

alias Pairs = HashMap{int[2], bool};

fn int main(String[] args)
{
	Pairs s;
	s.init(mem);
	s.set({ 1, 2 }, true);
	io::printfn("%s", s.has_key({ 1, 2 }));
	return 0;
}
