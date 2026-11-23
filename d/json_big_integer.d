import std.json, std.stdio;

void main()
{
    auto event = parseJSON(`{"id": 9007199254740993}`);
    writeln(event["id"]);
}
