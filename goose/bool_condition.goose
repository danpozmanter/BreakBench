fn compare(a: const u8[:], b: const u8[:]) -> i64 { return if a == b { 0 } else { 1 }; }

fn main() {
    if compare("x", "x") == 0 { print("same"); }
    if compare("x", "x") { print("different"); } // BREAK!
}
