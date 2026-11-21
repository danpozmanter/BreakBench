import std.file, std.process, std.stdio;

void main(string[] args)
{
    if (exists("/tmp/bb_pwned")) std.file.remove("/tmp/bb_pwned");
    executeShell("echo " ~ args[1]);
    writeln(exists("/tmp/bb_pwned") ? "injected" : "safe");
}
