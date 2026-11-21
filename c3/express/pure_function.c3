// LEVEL: LANGUAGE

import std::io;

int hits; // REJECT!

<* @pure *>
fn int square(int x) => x * x;

<* @pure *> // REJECT!
fn int square_counted(int x) { hits++; return x * x; } // REJECT!

fn int main(String[] args)
{
	io::printn(square(7));
	io::printn(square_counted(7)); // REJECT!
	return 0;
}
