// LEVEL: STD

import std;
import os;

fn main() {
    let n, ok = parse_int(args()[1]);
    print(if ok { "valid" } else { "invalid" });
}
