import std.conv, std.stdio;

void main(string[] args)
{
    bool a = args[1].to!int != 0;
    bool b = true;
    string r = "unset";
    if (a) // BREAK!
        if (b) r = "both"; // BREAK!
    else // BREAK!
        r = "not a"; // BREAK!
    // CONTROL! if (a) { if (b) r = "both"; } else { r = "not a"; }
    writeln(r);
}
