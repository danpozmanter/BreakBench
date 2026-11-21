// LEVEL: LANGUAGE

import std.stdio;

enum byteLimit = 255;

static assert(100 <= byteLimit);
static assert(300 <= byteLimit); // REJECT!

void main() { writeln(100); }
