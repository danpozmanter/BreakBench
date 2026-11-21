// LEVEL: STD

import dictionary;

fn main() {
    var counts = dictionary<u8[..8], i64> {};
    for w in ["a", "b", "a"] {
        counts.update(w, 0) { it += 1; };
    }
    print("a=", counts.get("a"), " b=", counts.get("b"));
}
