fn main() {
    let mut i = 0;
    i += 1;
    i = i++; // BREAK!
    println!("{i}");
}
