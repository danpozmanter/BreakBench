import std;
import os;

fn main() {
    let xs: i64[3] = [1, 2, 3];
    let i, ok = parse_int(args()[1]);
    print(if i < xs.len { "less" } else { "not less" });
}
