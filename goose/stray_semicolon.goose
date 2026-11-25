import std;
import os;

fn size(n: i64) -> const u8[:] {
    var label = "small";
    if n > 5; { label = "big"; } // CONTROL! if n > 5 { label = "big"; }
    return label;
}

fn main() {
    let a, ok = parse_int(args()[1]);
    let b, ok2 = parse_int(args()[2]);
    print(size(a));
    print(size(b));
}
