// LEVEL: LANGUAGE

fn main() {
    let a = String::from("abc");
    let mut b = a.clone();
    b.push('d');
    let mut moved = a; moved.push('d'); println!("{a}"); // REJECT!
    println!("{a}");
}
