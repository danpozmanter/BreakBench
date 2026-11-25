import std.conv : ConvException, to;
import std.file : remove;
import std.stdio : File, writeln;

enum scratch = "/tmp/bb_scratch/export.csv";

void export_rows(string[] rows)
{
    auto file = File(scratch, "w");
    file.writeln("qty");
    foreach (row; rows)
    {
        auto qty = row.to!int; // BREAK!
        // CONTROL! int qty; try qty = row.to!int; catch (ConvException e) { file.close(); remove(scratch); throw e; }
        file.writeln(qty);
    }
    file.close();
    remove(scratch);
}

void main()
{
    try
        export_rows(["3", "x", "5"]);
    catch (Exception e)
        writeln("export failed");
}
