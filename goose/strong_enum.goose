enum Color { Red, Green, Blue }

fn name(c: Color) -> const u8[:] {
    return match c {
        Red => "red",
        Green => "green",
        Blue => "blue",
    };
}

fn main() {
    let c = Color.Green;
    print(name(7)); // BREAK!
    print(name(c));
}
