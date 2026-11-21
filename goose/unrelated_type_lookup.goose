import std;
import os;

fn main() {
    let ids: i64[3] = [10, 20, 30];
    let id = args()[1];
    print(if contains(ids, id) { "found" } else { "missing" }); // CONTROL! let n, ok = parse_int(id); print(if contains(ids, n) { "found" } else { "missing" });
}
