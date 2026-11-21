// LEVEL: STD

import std::io;
import std::collections::list;

alias Bytes = List{char};

fn int main(String[] args)
{
	Bytes buf;
	buf.init(mem);
	for (int i = 0; i < 100000; i++) buf.push((char)i);
	io::printn(buf.len());
	return 0;
}
