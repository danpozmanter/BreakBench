// LEVEL: LANGUAGE

import std::io;

fn int main(String[] args)
{
	int[3] table = { 10, 20, 30 };
	io::printfn("%d", table[1]);
	io::printfn("%d", table[5]); // REJECT!
	return 0;
}
