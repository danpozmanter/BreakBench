// LEVEL: STD

import std.json, std.stdio;

void main()
{
    auto good = parseJSON(`{"port": 8080, "debug": true}`);
    string result = "valid";
    try
        parseJSON(`{port: 8080}`);
    catch (JSONException)
        result = "invalid";
    writeln(good["port"].integer, " ", result);
}
