import std;
import os;

fn main() {
    let x, ok = parse_flt(args()[1]);
    let v = x as i64;
    print(v);
}
