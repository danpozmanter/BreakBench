fn add_item(cart: u8[][>..]&, item: u8[:]) {
    cart.push(item);
}

fn main() {
    var a: u8[][>..] = [];
    add_item(a, "x");
    var b: u8[][>..] = [];
    add_item(b, "y");
    print(b.len);
}
