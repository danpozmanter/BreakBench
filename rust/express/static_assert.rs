// LEVEL: LANGUAGE

const BYTE_LIMIT: i64 = 255;

const _: () = assert!(100 <= BYTE_LIMIT);
const _: () = assert!(300 <= BYTE_LIMIT); // REJECT!

fn main() {
    println!("100");
}
