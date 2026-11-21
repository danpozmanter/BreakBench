import std;
import os;

fn main() {
    let x, ok = parse_int(args()[1]);
    let inside = 1 < x < 3; // BREAK!
    // CONTROL! let inside = 1 < x && x < 3;
    print(if inside { "inside" } else { "outside" });
}
