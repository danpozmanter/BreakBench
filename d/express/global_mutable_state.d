// LEVEL: LANGUAGE

import std.stdio;

int hits;
shared int plain; // REJECT!

void hit() { hits++; }

void bad() { plain++; } // REJECT!

void main()
{
    hit();
    hit();
    writeln(hits);
}
