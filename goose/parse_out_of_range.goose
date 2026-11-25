import std;
import os;

fn main() {
    let n, ok = parse_int(args()[1]);
    print(n); // CONTROL! if ok { print(n); } else { print("invalid"); }
}
