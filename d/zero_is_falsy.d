import std.conv, std.stdio, std.typecons;

void main(string[] args)
{
    Nullable!int qty = args[1].to!int;
    bool present = false;
    if (qty) present = true;
    writeln(present ? "have " ~ qty.get.to!string : "missing");
}
