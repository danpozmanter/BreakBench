import std;
import os;

fn main() {
    let v, ok = parse_int(args()[1]);
    let b = v as u8;
    print(b);
}
