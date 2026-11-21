// LEVEL: LANGUAGE

fn main() {
    println!("before");
    let two = std::env::args().count() + 1;
    assert!(two == 3);
    println!("after");
}
