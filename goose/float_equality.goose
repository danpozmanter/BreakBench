import std;
import os;

fn main() {
    let x, okx = parse_flt(args()[1]);
    let y, oky = parse_flt(args()[2]);
    let a = x + y;
    print(if a == 0.3 { "equal" } else { "not equal" });
}
