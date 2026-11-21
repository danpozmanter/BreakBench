fn main() {
    let a: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    let a = a != 0;
    let b = true;
    let mut r = "unset";
    if a {
        if b {
            r = "both";
        }
    } else {
        r = "not a";
    }
    println!("{}", r);
}
