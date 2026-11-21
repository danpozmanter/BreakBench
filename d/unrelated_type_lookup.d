import std.algorithm : canFind;
import std.conv : to;
import std.stdio;

void main(string[] args)
{
    int[] ids = [10, 20, 30];
    string id = args[1];
    writeln(ids.canFind(id) ? "found" : "missing"); // CONTROL! writeln(ids.canFind(id.to!int) ? "found" : "missing");
}
