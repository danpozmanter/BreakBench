// LEVEL: STD

import dictionary;
import std;

fn main() {
    let a, ok1 = parse_flt("nan");
    let b, ok2 = parse_flt("nan");
    var s = dictionary<f64, bool> {};
    s.insert(a, true);
    print(if s.contains(b) { "found" } else { "missing" });
}
