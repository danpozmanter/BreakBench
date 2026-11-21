// LEVEL: LANGUAGE

import std::io;
import std::core::dstring;

fn int main(String[] args)
{
	DString a = dstring::new(mem, "abc");
	DString b = a;
	b.append("d");
	io::printn(a);
	return 0;
}
