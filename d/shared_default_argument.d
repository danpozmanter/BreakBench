import std.stdio;

string[] addItem(string item, string[] cart = [])
{
    cart ~= item;
    return cart;
}

void main()
{
    addItem("x");
    auto b = addItem("y");
    writeln(b.length);
}
