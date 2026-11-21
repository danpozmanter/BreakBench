// LEVEL: STD

import std.container.rbtree, std.stdio, std.typecons;

void main()
{
    auto m = redBlackTree!((a, b) => a[0] < b[0], Tuple!(string, int))();
    m.insert(tuple("c", 1));
    m.insert(tuple("a", 2));
    m.insert(tuple("b", 3));
    string sep;
    foreach (e; m) { write(sep, e[0]); sep = " "; }
    writeln();
}
