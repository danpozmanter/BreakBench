fn main() {
    let args: Vec<String> = std::env::args().collect();
    let x: f64 = args[1].parse().unwrap();
    let y: f64 = args[2].parse().unwrap();
    let a = x + y;
    println!("{}", if a == 0.3 { "equal" } else { "not equal" });
}
