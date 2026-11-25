import std.file : exists, remove, write;
import std.stdio : writeln;

enum lockPath = "/tmp/bb_scratch/reader.lock";

struct Rows
{
    string[] lines;

    @disable this(this);

    ~this()
    {
        if (lines !is null && exists(lockPath))
            remove(lockPath);
    }

    bool empty() const { return lines.length == 0; }
    string front() const { return lines[0]; }
    void popFront() { lines = lines[1 .. $]; }
}

Rows rows()
{
    write(lockPath, "");
    return Rows(["alpha", "beta", "gamma"]);
}

void main()
{
    foreach (line; rows())
    {
        writeln(line);
        break;
    }
}
