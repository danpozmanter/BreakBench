// LEVEL: STD

import std.conv, std.file, std.stdio;

void main()
{
    enum path = "/tmp/bb_perm.txt";
    if (path.exists)
        std.file.remove(path);
    std.file.write(path, "");
    setAttributes(path, octal!600);
    writefln("%o", getAttributes(path) & octal!777);
    std.file.remove(path);
}
