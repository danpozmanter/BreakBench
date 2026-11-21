import std.stdio;

void main(string[] args)
{
    string status = "pending";
    if (args[1] == "ok")
    {
        string status = "done"; // CONTROL! status = "done";
        stderr.writeln("status: ", status);
    }
    writeln(status);
}
