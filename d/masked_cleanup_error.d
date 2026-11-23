import std.stdio;

class Report
{
    void write(string text) { throw new Exception("disk full"); }
    void close() { throw new Exception("close failed"); }
}

void save()
{
    auto report = new Report;
    scope (exit) report.close();
    report.write("totals");
}

void main()
{
    try
        save();
    catch (Exception error)
        writeln(error.msg);
}
