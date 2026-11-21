import std.stdio;

void main()
{
    string greeting = "hello";
    greeting[0] = 'j'; // CONTROL! greeting = "j" ~ greeting[1 .. $];
    writeln(greeting);
}
