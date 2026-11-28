import std.json, std.stdio;

void main()
{
    auto user = parseJSON(`{"name": "Ada"}`); // CONTROL! auto user = parseJSON(`{"name": "Ada", "age": 36}`);
    writeln(user["age"].integer + 1);
}
