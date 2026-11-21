import std.stdio;

struct Config { string color = "blue"; }

void main()
{
    Config cfg;
    cfg.colour = "red"; // BREAK!
    writeln(cfg.color);
}
