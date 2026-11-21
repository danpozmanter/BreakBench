import std;
import os;

fn main() {
    var x, ok = parse_int(args()[1]);
    var label = "not one";
    if x = 1 { label = "one"; } // BREAK!
    // CONTROL! if x == 1 { label = "one"; }
    print(label);
}
