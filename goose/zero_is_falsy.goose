import std;
import os;

fn main() {
    let qty, ok = parse_int(args()[1]);
    var present = false;
    if qty { present = true; } // BREAK!
    // CONTROL! if ok { present = true; }
    if present { print("have ", qty); } else { print("missing"); }
}
