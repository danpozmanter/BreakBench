import std;
import os;

fn show(f: f64) { print(f as i64); }

fn main() {
    let n, ok = parse_int(args()[1]);
    show(n); // CONTROL! print(n);
}
