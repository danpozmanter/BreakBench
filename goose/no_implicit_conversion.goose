fn main() {
    let big: i64 = 42;
    let small: i32 = big as i32;
    let wrong: i32 = big; // BREAK!
    print(small);
}
