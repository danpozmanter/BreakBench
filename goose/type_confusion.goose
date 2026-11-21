import std;
import os;

fn add(a: i64, b: i64) -> i64 { a + b }

fn main() {
    let raw = args()[1];
    print(add(raw, 3)); // BREAK!
    print(raw, add(1, 2));
}
