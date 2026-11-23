import std.stdio;

void main()
{
    auto report = File("/tmp/bb_report.txt", "w");
    report.writeln("total=42");
}
