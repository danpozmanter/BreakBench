// LEVEL: LANGUAGE

import std.stdio;

string grade(int score)
{
    return score > 50 ? "pass" : "fail";
}

string bad(int score) // REJECT!
{ // REJECT!
    if (score > 50) return "pass"; // REJECT!
} // REJECT!

void main()
{
    writeln(grade(60));
}
