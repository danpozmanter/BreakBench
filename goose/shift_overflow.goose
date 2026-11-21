import std;
import os;

fn main() {
    let s, ok = parse_int(args()[1]);
    let one: u64 = 1;
    print(one << s);
}
