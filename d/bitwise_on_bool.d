import std.stdio;

void main()
{
    string s = "";
    writeln((s.length > 0) & (s[0] == 'a') ? "yes" : "no"); // CONTROL! writeln(s.length > 0 && s[0] == 'a' ? "yes" : "no");
}
