// LEVEL: STD

import std.container.binaryheap, std.stdio;

void main()
{
    auto q = heapify!"a > b"([3, 1, 2]);
    writefln("%(%s %)", q);
}
