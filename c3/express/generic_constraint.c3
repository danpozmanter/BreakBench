// LEVEL: LANGUAGE

import std::io, std::sort;

struct Point { int x; int y; }

fn int main(String[] args)
{
	int[3] xs = { 3, 1, 2 };
	sort::quicksort(xs[..]);
	Point[1] ps = { { 1, 2 } }; // REJECT!
	sort::quicksort(ps[..]); // REJECT!
	io::printfn("%d", xs[0]);
	return 0;
}
