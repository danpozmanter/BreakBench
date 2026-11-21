import std;
import dictionary;

fn hash(k: i64[2]) -> u64 { hash(k[0]) ^ (hash(k[1]) << 1) }

fn main() {
    var seen = dictionary<i64[2], bool> {};
    var key: i64[2] = [1, 2];
    seen.insert(key, true);
    key[0] = 9;
    seen.each() { e, v => print(if seen.contains(e) { "found" } else { "lost" }); };
}
