import std;
import math;

fn main() {
    let nan = 0.0 / 0.0;
    var xs: f64[>..] = [5.0, nan, 3.0, 1.0, nan, 4.0, 2.0];
    sort(xs); // CONTROL! var finite: f64[>..] = []; for x in xs { if x == x { finite.push(x); } } sort(finite); xs = copy(finite);
    var prev = -1.0e300;
    var ordered = true;
    for x in xs {
        if x != x { continue; }
        if x < prev { ordered = false; }
        prev = x;
    }
    print(if ordered { "ordered" } else { "unordered" });
}
