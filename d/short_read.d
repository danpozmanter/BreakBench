import std.process, std.stdio;

void main()
{
    auto child = pipeProcess(["sh", "-c", "printf HELLO-WO; sleep 0.2; printf RLD-1234"], Redirect.stdout);
    char[16] message;
    child.stdout.rawRead(message[]);
    wait(child.pid);
    writeln(message[]);
}
