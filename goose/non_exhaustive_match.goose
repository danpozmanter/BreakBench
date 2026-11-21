import std;
import os;

enum Color { Red, Green, Blue }

fn name(c: Color) -> const u8[:] {
    match c {
        Red => "red",
        Green => "green",
        // CONTROL! Blue => "blue",
    }
}

fn main() {
    let i, ok = parse_int(args()[1]);
    let colors: Color[3] = [Color.Red, Color.Green, Color.Blue];
    print(name(colors[i]));
}
