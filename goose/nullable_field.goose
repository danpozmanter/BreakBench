import std;

struct User { name: u8[..16]? }

fn main() {
    let decoded = User { name: null };
    print(decoded.name.len); // BREAK!
}
