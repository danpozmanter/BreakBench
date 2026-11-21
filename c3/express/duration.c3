// LEVEL: STD

import std::io;
import std::time;

fn int main(String[] args)
{
	Duration total = time::ms(1500) + time::ms(500);
	long n = 5;
	Duration wrong = total + n; // REJECT!
	io::printn(total.to_ms());
	return 0;
}
