import std;
import os;

fn main() {
    var xs: i64[>..] = [];
    for a in args()[1..] {
        let n, ok = parse_int(a);
        if ok { xs.push(n); }
    }
    print(max(xs) + 1); // CONTROL! if xs.len == 0 { print("no readings"); } else { print(max(xs) + 1); }
}
