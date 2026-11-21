import std;
import os;

fn main() {
    let n, ok = parse_int(args()[1]);
    let x: i64;
    if n > 5 { x = 10; }
    print(x); // BREAK!
    print(n);
}
