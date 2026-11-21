// LEVEL: LANGUAGE

import std::io;

fn int main(String[] args)
{
	int id = 42;
	if (id == 42) io::printn("match");
	if (id == "42") io::printn("text"); // REJECT!
	return 0;
}
