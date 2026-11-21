import std.stdio, std.typecons;

Nullable!int find(int id) { return id == 1 ? Nullable!int(36) : Nullable!int.init; }

void main()
{
    writeln("before");
    stdout.flush();
    writeln(find(2).get + 1);
}
