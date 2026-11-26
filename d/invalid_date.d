import std.conv : to;
import std.datetime.date : Date, DateTimeException;
import std.stdio;

void main(string[] args)
{
    auto date = Date(args[1].to!int, args[2].to!int, args[3].to!int); // BREAK!
    writeln(date.toISOExtString()); // BREAK!
    // CONTROL! try writeln(Date(args[1].to!int, args[2].to!int, args[3].to!int).toISOExtString());
    // CONTROL! catch (DateTimeException) writeln("invalid");
}
