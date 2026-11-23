import std.conv, std.stdio;

class Node
{
    ubyte[] data;
    Node other;
    this() { data = new ubyte[4096]; data[] = 1; }
}

void main(string[] args)
{
    immutable n = args[1].to!long;
    foreach (_; 0 .. n)
    {
        auto parent = new Node;
        auto child = new Node;
        parent.other = child;
        child.other = parent;
    }
    writeln("done");
}
