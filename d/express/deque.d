// LEVEL: STD

import std.container.dlist, std.stdio;

void main()
{
    auto d = DList!int();
    d.insertBack(1);
    d.insertFront(0);
    d.insertBack(2);
    auto front = d.front; d.removeFront();
    auto back = d.back; d.removeBack();
    writeln(front, " ", back);
}
