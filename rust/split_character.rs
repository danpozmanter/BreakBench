fn main() {
    let name = "a👍b";
    let n: usize = std::env::args().nth(1).unwrap().parse().unwrap();
    println!("{}", &name[..n]);
}
