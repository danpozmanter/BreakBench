import std;
import os;

fn main() {
    var xs: i64[>..] = [];
    for a in args()[1..] {
        let n, ok = parse_int(a);
        if ok { xs.push(n); }
    }
    print(max(xs) + 1);
}
