import std.file, std.stdio;

void save(string path) { std.file.write(path, "data"); }

void main()
{
    save("/nonexistent/dir/out.txt");
    writeln("saved");
}
