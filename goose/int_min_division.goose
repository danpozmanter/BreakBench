import std;
import os;

fn main() {
    let a, ok_a = parse_int(args()[1]);
    let b, ok_b = parse_int(args()[2]);
    print(a / b); // CONTROL! print(((a + 1) / b) as u64 + 1);
}
