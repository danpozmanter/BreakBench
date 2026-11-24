import std.algorithm : endsWith; // CONTROL! import std.algorithm : canFind, endsWith;
import std.file, std.stdio;

void main()
{
    mkdirRecurse("/tmp/bb_files");
    std.file.write("/tmp/bb_files/report.txt", "secret\n");

    string name = "report.txt\0.png";
    // CONTROL! if (name.canFind('\0')) { writeln("rejected"); return; }
    if (!name.endsWith(".png"))
    {
        writeln("rejected");
        return;
    }
    try
        std.stdio.write(readText("/tmp/bb_files/" ~ name));
    catch (Exception)
        writeln("rejected");
}
