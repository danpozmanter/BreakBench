// LEVEL: STD

import std::io;
import std::collections::sortedmap;

fn int main(String[] args)
{
	SortedMap{String, int} m;
	m.init(mem);
	m["c"] = 1;
	m["a"] = 2;
	m["b"] = 3;
	String sep = "";
	foreach (entry : m.iter())
	{
		io::printf("%s%s", sep, entry.key);
		sep = " ";
	}
	io::printn();
	return 0;
}
