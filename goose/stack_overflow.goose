import std;
import os;

recursive fn walk(n: i64) -> i64 {
    if n == 0 { return 0; }
    return (walk(n - 1) * 31 + n) % 1000000007;
}

fn main() {
    let n, ok = parse_int(args()[1]);
    print(walk(n));
}
