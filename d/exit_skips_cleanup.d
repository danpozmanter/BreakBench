import core.stdc.stdlib : exit;
import std.algorithm : canFind;
import std.file : remove, write;
import std.stdio : stdout, writeln;

enum lockPath = "/tmp/bb_scratch/run.lock";

bool checkArgs(string[] args)
{
    if (args.canFind("--version"))
    {
        writeln("1.0");
        stdout.flush();
        exit(0); // BREAK!
        // CONTROL! return true;
    }
    return false;
}

void main(string[] args)
{
    write(lockPath, "");
    scope (exit) remove(lockPath);
    if (checkArgs(args))
        return;
    writeln("working");
}
