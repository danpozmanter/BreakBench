import std.stdio;

void main()
{
    { // CONTROL! try {
        auto f = File("/dev/full", "w");
        f.writeln("data"); // CONTROL! f.writeln("data"); f.close();
    } // CONTROL! writeln("saved"); } catch (Exception) { writeln("failed"); }
    writeln("saved"); // BREAK!
}
