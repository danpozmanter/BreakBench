import std.process, std.stdio;

void main()
{
    wait(spawnShell("exit 3")); // CONTROL! if (wait(spawnShell("exit 3")) != 0) { writeln("backup failed"); return; }
    writeln("backed up");
}
