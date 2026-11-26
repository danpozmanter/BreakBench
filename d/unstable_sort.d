import std.algorithm : all, map, sort, SwapStrategy;
import std.range : iota, slide;
import std.array : array;
import std.stdio;

struct Order { int customer; int day; }

void main()
{
    auto orders = iota(200).map!(day => Order(day * 7 % 5, day)).array;
    // UNDEFINED: sort's default unstable swap strategy leaves the order of equal elements unspecified
    orders.sort!((a, b) => a.customer < b.customer); // CONTROL! orders.sort!((a, b) => a.customer < b.customer, SwapStrategy.stable);
    bool kept = orders.slide(2).all!(w => w[0].customer != w[1].customer || w[0].day < w[1].day);
    writeln(kept ? "kept" : "scrambled");
}
