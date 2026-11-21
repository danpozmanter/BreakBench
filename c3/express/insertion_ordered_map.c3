// LEVEL: STD

import std::io;
import std::collections::map;

fn int main(String[] args)
{
	LinkedHashMap{String, int} m;
	m.init(mem);
	m.set("c", 1);
	m.set("a", 2);
	m.set("b", 3);
	String sep = "";
	foreach (key : m.keys(tmem))
	{
		io::printf("%s%s", sep, key);
		sep = " ";
	}
	io::printn();
	return 0;
}
