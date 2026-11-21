// LEVEL: STD

import std::io;
import std::collections::set;

fn int main(String[] args)
{
	TreeSet{int} s;
	s.init(mem);
	s.add(3);
	s.add(1);
	s.add(2);
	String sep = "";
	foreach (v : s.values(tmem))
	{
		io::printf("%s%d", sep, v);
		sep = " ";
	}
	io::printn();
	return 0;
}
