import std.stdio;
import std.typecons : Nullable, nullable;

Nullable!int cachedCount(string name)
{
    return name == "ada" ? nullable(4) : Nullable!int.init;
}

void main(string[] args)
{
    auto cached = cachedCount(args[1]);
    int count = cached.get(0) + 1;
    writeln(count);
}
