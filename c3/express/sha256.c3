// LEVEL: STD

import std::io;
import std::hash::sha256;

fn int main(String[] args)
{
	char[32] digest = sha256::hash("abc");
	foreach (b : digest) io::printf("%02x", b);
	io::printn();
	return 0;
}
