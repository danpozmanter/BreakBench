import std.conv, std.json, std.stdio;

void main(string[] args)
{
    int count = args[1].to!int;
    double mean = 0.0 / count;
    writeln(JSONValue(["mean": mean]).toString); // CONTROL! try { writeln(JSONValue(["mean": mean]).toString); } catch (JSONException) { writeln("refused"); }
}
