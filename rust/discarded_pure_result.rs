fn main() {
    let name = String::from("ada");
    name.to_uppercase(); // BREAK!
    println!("{name}"); // CONTROL! println!("{}", name.to_uppercase());
}
