import std;
import os;

fn main() {
    let n, ok = parse_int(args()[1]);
    let name = match n {
        1 => "one",
        2 => "two",
        _ => "other",
    };
    print(name);
}
