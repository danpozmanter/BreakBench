// LEVEL: STD

fn main() {
    let bytes = vec![0x61u8, 0xFF];
    println!("{}", if String::from_utf8(bytes).is_ok() { "valid" } else { "invalid" });
}
