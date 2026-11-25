import std.file, std.stdio;

void main()
{
    string text;
    try
        text = readText("/nonexistent/bb.conf");
    catch (FileException e)
    {
        stderr.writeln("config missing: ", e.msg);
        return; // BREAK!
        // CONTROL! throw e;
    }
    writeln(text.length);
}
