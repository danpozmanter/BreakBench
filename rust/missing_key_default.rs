use std::collections::HashMap;

fn main() {
    let stock = HashMap::from([("apple".to_string(), 3), ("plum".to_string(), 4)]);
    let name = std::env::args().nth(1).unwrap();
    println!("{}", stock[&name] + 5); // CONTROL! match stock.get(&name) { Some(n) => println!("{}", n + 5), None => println!("unknown") }
}
