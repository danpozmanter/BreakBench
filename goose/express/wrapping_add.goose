// LEVEL: LANGUAGE

import std;
import os;

fn main() {
    let n, ok = parse_int(args()[1]);
    print(((n as! u64) + 1) as! i64);
}
