fn add_item(item: &str, cart: Option<Vec<String>>) -> Vec<String> {
    let mut cart = cart.unwrap_or_default();
    cart.push(item.to_string());
    cart
}

fn main() {
    add_item("x", None);
    let b = add_item("y", None);
    println!("{}", b.len());
}
