import std.conv, std.stdio;

string grade(int score)
{
    if (score > 50) return "pass";
    if (score < 50) return "fail";
    // CONTROL! return "borderline";
}

void main(string[] args)
{
    writeln(grade(args[1].to!int));
}
