struct Order {
    customer: i64,
    day: i64,
}

fn main() {
    let mut orders: Vec<Order> = (0..200).map(|day| Order { customer: day * 7 % 5, day }).collect();
    orders.sort_by_key(|o| o.customer);
    let kept = orders.windows(2).all(|w| w[0].customer != w[1].customer || w[0].day < w[1].day);
    println!("{}", if kept { "kept" } else { "scrambled" });
}
