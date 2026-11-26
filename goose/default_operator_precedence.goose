import std;
import os;

fn cached_count(name: u8[:]) -> i64, bool {
    if name == "ada" { return 4, true; }
    return 0, false;
}

fn main() {
    // Goose has no default operator or conditional expression; the default is an if.
    let cached, found = cached_count(args()[1]);
    var count: i64 = 0;
    if found { count = cached; }
    count += 1;
    print(count);
}
