// LEVEL: LANGUAGE

import std::io;

typedef Meters = double;
typedef Seconds = double;

fn int main(String[] args)
{
	Meters a = (Meters)2.0;
	Meters b = (Meters)3.0;
	Seconds s = (Seconds)3.0;
	Meters wrong = a + s; // REJECT!
	Meters total = a + b;
	io::printn((long)(double)total);
	(void)s;
	return 0;
}
