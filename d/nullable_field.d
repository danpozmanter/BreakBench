import std.stdio, std.typecons;

struct User { Nullable!string name; }

void main() {
    User decoded;
    writeln(decoded.name.length); // CONTROL! if (decoded.name.isNull) writeln("no name"); else writeln(decoded.name.get.length);
    // CONTROL! writeln(decoded.name.get.length); // BREAK!
}
