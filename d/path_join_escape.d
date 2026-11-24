import std.algorithm, std.path, std.stdio; // CONTROL! import std.algorithm, std.path, std.stdio, std.string;

void main(string[] args)
{
    auto joined = buildPath("/srv/app/uploads", args[1]); // CONTROL! auto joined = buildPath("/srv/app/uploads", args[1].stripLeft("/"));
    writeln(joined.startsWith("/srv/app/uploads/") ? "inside" : "escaped");
}
