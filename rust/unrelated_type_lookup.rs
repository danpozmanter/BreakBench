fn main() {
    let ids: Vec<i64> = vec![10, 20, 30];
    let id = std::env::args().nth(1).unwrap();
    println!("{}", if ids.contains(&id) { "found" } else { "missing" }); // CONTROL! println!("{}", if ids.contains(&id.parse::<i64>().unwrap()) { "found" } else { "missing" });
}
