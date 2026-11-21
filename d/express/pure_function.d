// LEVEL: LANGUAGE

import std.stdio;

int hits;

pure int square(int x) { return x * x; }

pure int squareCounted(int x) { hits++; return x * x; } // REJECT!

void main() { writeln(square(7)); }
