import std.conv, std.format, std.stdio;

void process(string request, int id)
{
    auto buf = new char[](4096);
    auto text = format("%s#%s", request, id);
    buf[0 .. text.length] = text;
    if (buf[0] != '{') throw new Exception("invalid request");
}

void main(string[] args)
{
    int n = args[1].to!int;
    int failures = 0;
    foreach (i; 0 .. n)
    {
        try process("not json", i);
        catch (Exception) failures++;
    }
    writeln(failures == n ? "done" : "unexpected");
}
