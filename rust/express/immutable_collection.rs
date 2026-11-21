// LEVEL: LANGUAGE

fn main() {
    let xs = vec![1, 2, 3];
    xs.push(4); // REJECT!
    println!("{}", xs.len());
}
