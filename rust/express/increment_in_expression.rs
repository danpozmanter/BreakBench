// LEVEL: LANGUAGE

fn main() {
    let mut i = 0;
    i += 1;
    i = i++; // REJECT!
    println!("{i}");
}
