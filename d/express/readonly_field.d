// LEVEL: LANGUAGE

import std.stdio;

struct Config { immutable int port; }

void main()
{
    auto c = Config(8080);
    c.port = 1; // REJECT!
    writeln(c.port);
}
