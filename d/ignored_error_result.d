import std.file, std.stdio;

void save(string path) { std.file.write(path, "data"); }

void main()
{
    save("/dev/null/out.txt"); // CONTROL! try { save("/dev/null/out.txt"); writeln("saved"); } catch (FileException) { writeln("failed"); }
    writeln("saved"); // BREAK!
}
