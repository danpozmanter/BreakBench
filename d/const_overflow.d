import std.stdio;

enum long span = 1_000_000_000L * 60 * 60 * 24 * 365 * 300; // CONTROL! enum ulong span = 1_000_000_000UL * 60 * 60 * 24 * 365 * 300;

void main() { writeln(span); }
