// LEVEL: LANGUAGE

import std::io;

const int[3] XS = { 1, 2, 3 };

fn int main(String[] args)
{
	XS[0] = 9; // REJECT!
	io::printn(XS.len);
	return 0;
}
