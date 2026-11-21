// LEVEL: LANGUAGE

fn main() {
    let big: i64 = 42;
    let small: i32 = big as i32;
    let _wrong: i32 = big; // REJECT!
    println!("{small}");
}
