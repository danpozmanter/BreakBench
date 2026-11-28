fn main() {
    let n: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    match n.checked_add(1) { Some(sum) => println!("{sum}"), None => { eprintln!("overflow"); std::process::exit(1) } } // CONTROL! println!("{}", n as i128 + 1);
}
