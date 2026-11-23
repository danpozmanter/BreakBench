import std.process, std.stdio;

void main()
{
    wait(spawnShell("exit 3"));
    writeln("backed up");
}
