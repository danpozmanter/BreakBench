import std.stdio;

struct Item { int val; }

void main()
{
    Item[] v = [Item(1)];
    Item* r = &v[0];
    foreach (i; 0 .. 1000) v ~= Item(i);
    Item[] w = [Item(7)];
    r.val = 99;
    writeln(w[0].val);
}
