import std.stdio;

void main(string[] args)
{
    bool ready = args[1] == "yes";
    bool approved = args[2] == "yes";
    bool ok = ready && approved;
    writeln(ok ? "go" : "wait");
}
