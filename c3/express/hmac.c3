// LEVEL: STD

import std::io;
import std::hash::sha256;

fn int main(String[] args)
{
	char[32] tag = sha256::hmac("key", "The quick brown fox jumps over the lazy dog");
	foreach (b : tag) io::printf("%02x", b);
	io::printn();
	return 0;
}
