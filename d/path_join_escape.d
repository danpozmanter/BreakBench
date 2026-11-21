import std.algorithm, std.path, std.stdio;

void main(string[] args)
{
    auto joined = buildPath("/srv/app/uploads", args[1]);
    writeln(joined.startsWith("/srv/app/uploads/") ? "inside" : "escaped");
}
