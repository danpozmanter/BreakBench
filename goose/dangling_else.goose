import std;
import os;

fn main() {
    let n, ok = parse_int(args()[1]);
    let a = n != 0;
    let b = true;
    var r = "unset";
    if a {
        if b { r = "both"; }
    } else {
        r = "not a";
    }
    print(r);
}
