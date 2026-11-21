// LEVEL: STD

import std::io;
import std::crypto::entropy;

fn int main(String[] args)
{
	char[16] buf;
	entropy::fill(&buf)!!;
	foreach (b : buf) io::printf("%02x", b);
	io::printn();
	return 0;
}
