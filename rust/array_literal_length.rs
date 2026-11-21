fn main() {
    let table: [i64; 4] = [10, 20, 30, 40];
    println!("{}", table[3]);
    let short: [i64; 4] = [10, 20, 30]; // BREAK!
}
