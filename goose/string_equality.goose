import std;
import os;

fn main() {
    let s = str("ab", args()[1]);
    print(if s == "abc" { "equal" } else { "different" });
}
