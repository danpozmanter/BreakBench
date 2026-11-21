import std;
import os;

fn is_odd(n: i64) -> bool {
    return n % 2 == 1;
}

fn main() {
    let n, ok = parse_int(args()[1]);
    print(if is_odd(n) { "odd" } else { "even" });
}
