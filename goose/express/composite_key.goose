// LEVEL: STD

import dictionary;

fn hash(k: i64[2]) -> u64 { hash(k[0]) ^ (hash(k[1]) << 1) }

fn main() {
    var s = dictionary<i64[2], bool> {};
    s.insert([1, 2], true);
    print(s.contains([1, 2]));
}
