// LEVEL: STD

import std.digest, std.digest.sha, std.stdio, std.uni;

void main()
{
    writeln(toHexString!(LetterCase.lower)(sha256Of("abc")));
}
