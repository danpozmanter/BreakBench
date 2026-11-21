import std.conv, std.stdio;

class Node
{
    Node next;
    ubyte[] payload;
    this() { payload = new ubyte[](2048); }
}

class Obj
{
    ubyte[] payload;
    size_t delegate() callback;
    this() { payload = new ubyte[](2048); }
}

void main(string[] args)
{
    long total = 0;
    foreach (_; 0 .. args[1].to!int)
    {
        auto a = new Node();
        auto b = new Node();
        a.next = b;
        b.next = a;
        auto o = new Obj();
        o.callback = () => o.payload.length;
        total += o.callback();
    }
    writeln(total < 0 ? "unreachable" : "done");
}
