import std;
import os;

fn main() {
    let v, ok = parse_int(args()[1]);
    // CONTROL! if v < 0 || v > 255 { print("out of range"); return; }
    let b = v as u8;
    print(b);
}
