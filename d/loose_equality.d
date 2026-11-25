import std.stdio;

void main(string[] args)
{
    string code = args[1];
    writeln(code == 0 ? "same" : "different"); // CONTROL! writeln(code == "0" ? "same" : "different");
}
