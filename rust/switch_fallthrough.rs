fn main() {
    let n: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    let name = match n {
        1 => "one",
        2 => "two",
        _ => "other",
    };
    println!("{}", name);
}
