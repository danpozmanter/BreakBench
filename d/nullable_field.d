import std.stdio, std.typecons;

struct User { Nullable!string name; }

void main() {
    User decoded;
    writeln(decoded.name.get.length);
}
