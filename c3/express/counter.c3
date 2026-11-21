// LEVEL: STD

import std::io;
import std::collections::map;

alias Counts = HashMap{String, int};

fn int main(String[] args)
{
	Counts counts;
	counts.init(mem);
	foreach (w : (String[]){ "a", "b", "a" }) counts.set(w, (counts.get(w) ?? 0) + 1);
	io::printfn("a=%d b=%d", counts.get("a")!!, counts.get("b")!!);
	return 0;
}
