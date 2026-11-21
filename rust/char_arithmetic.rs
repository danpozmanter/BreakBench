fn main() {
    let c = 'a';
    let n: u32 = c as u32 + 1;
    println!("{n}");
    let m: u32 = c + 1; // BREAK!
}
