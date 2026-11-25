fn size(n: i64) -> &'static str {
    let mut label = "small";
    if n > 5; { // CONTROL! if n > 5 {
        label = "big";
    }
    label
}

fn main() {
    let args: Vec<i64> = std::env::args().skip(1).map(|a| a.parse().unwrap()).collect();
    println!("{}", size(args[0]));
    println!("{}", size(args[1]));
}
