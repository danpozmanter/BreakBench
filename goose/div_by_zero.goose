import std;
import os;

fn main() {
    let d, ok = parse_int(args()[1]);
    print(100 / d); // CONTROL! if d == 0 { print("cannot divide"); } else { print(100 / d); }
}
