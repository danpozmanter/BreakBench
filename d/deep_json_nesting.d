import std.array, std.conv, std.json, std.stdio;

void main(string[] args)
{
    size_t depth = args[1].to!size_t;
    // CONTROL! if (depth > 1000) { writeln("refused"); return; }
    parseJSON(replicate("[", depth) ~ replicate("]", depth));
    writeln("parsed");
}
