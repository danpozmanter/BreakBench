// Goose has no conversion from an integer to an enum; the match below must handle every other value.
import std;
import os;

enum Color { Red, Green, Blue }

fn name(c: Color) -> const u8[:] {
    return match c {
        Red => "Red",
        Green => "Green",
        Blue => "Blue",
    };
}

fn main() {
    let n, ok = parse_int(args()[1]);
    print("before");
    match n {
        0 => print(name(Color.Red)),
        1 => print(name(Color.Green)),
        2 => print(name(Color.Blue)),
        _ => print("invalid"),
    }
}
