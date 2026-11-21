// LEVEL: LANGUAGE

fn main() {
    let i: i64 = -1;
    let len: usize = [1, 2, 3].len();
    let _wrong = i < len; // REJECT!
    println!("{}", if i < len as i64 { "less" } else { "not less" });
}
