// LEVEL: STD

import std.algorithm, std.path, std.stdio;

void main()
{
    auto p = buildNormalizedPath("/srv/app", "../../etc/passwd");
    writeln(p.startsWith("/srv/app/") ? "inside" : "outside");
}
