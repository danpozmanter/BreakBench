// LEVEL: STD

import std.regex, std.stdio;

void main()
{
    auto re = regex(`^[a-z]+[0-9]{2}$`);
    writeln(!matchFirst("abc12", re).empty, " ", !matchFirst("abc1", re).empty);
}
