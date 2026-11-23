import std.stdio;

void main()
{
    string access = "user";
    if (access != "user‮ ⁦// admins only⁩ ⁦") // CONTROL! if (access != "user")
        writeln("admin");
    else
        writeln("user");
}
