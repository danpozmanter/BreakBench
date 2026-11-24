import std;
import os;

fn main() {
    let n, ok = parse_int(args()[1]);
    print(n + 1); // CONTROL! if ok { print(n + 1); } else { print("invalid"); }
}
