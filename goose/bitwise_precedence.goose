import std;
import os;

fn main() {
    let x, ok = parse_int(args()[1]);
    let even = x & 1 == 0; // BREAK!
    // CONTROL! let even = (x & 1) == 0;
    print(if even { "even" } else { "odd" });
}
