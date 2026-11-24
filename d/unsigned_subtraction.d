import std.stdio;

enum HEADER = 5;

void main(string[] args)
{
    auto message = args[1];
    auto payload = message.length - HEADER; // CONTROL! auto len = message.length;
    if (payload < 0) // CONTROL! if (len < HEADER)
        writeln("short");
    else
        writeln(payload); // CONTROL! writeln(len - HEADER);
}
