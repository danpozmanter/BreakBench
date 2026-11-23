import std.concurrency, std.stdio;

void worker()
{
    auto received = receiveOnly!(immutable(int)[]);
    receiveOnly!bool;
    writeln(received[0]);
}

void main()
{
    auto tid = spawn(&worker);
    int[] list = [1, 2, 3];
    tid.send(list); // BREAK!
    // CONTROL! tid.send(list.idup);
    list[0] = 99;
    tid.send(true);
}
