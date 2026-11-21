// LEVEL: STD

import std::io;
import std::crypto;

fn int main(String[] args)
{
	char[16] a;
	char[16] b;
	a[..] = 7;
	b[..] = 7;
	io::printn(crypto::safe_compare(&a, &b, 16) ? "equal" : "different");
	return 0;
}
