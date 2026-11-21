// LEVEL: LANGUAGE

import std::io;

fn int main(String[] args)
{
	int[4] table = { 10, 20, 30, 40 };
	io::printn(table[3]);
	int[4] short_table = { 10, 20, 30 }; // REJECT!
	return 0;
}
