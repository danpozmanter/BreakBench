import std.exception, std.stdio;

void writeReport()
{
    throw new Exception("disk full");
}

void closeLog()
{
}

void saveReport()
{
    try
    {
        writeReport();
    }
    finally
    {
        closeLog();
        return; // BREAK!
    }
}

void main(string[] args)
{
    try
    {
        saveReport();
        writeln("saved");
    }
    catch (Exception e)
    {
        writeln("failed");
    }
}
