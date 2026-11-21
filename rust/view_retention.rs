fn main() {
    let n: usize = std::env::args().nth(1).unwrap().parse().unwrap();
    let mut heads: Vec<Vec<u8>> = Vec::new();
    let mut prefixes: Vec<String> = Vec::new();
    for i in 0..n {
        let buf = vec![i as u8; 32768];
        heads.push(buf[..16].to_vec());
        let c = (b'a' + (i % 26) as u8) as char;
        let big: String = std::iter::repeat_n(c, 32768).collect();
        prefixes.push(big[..16].to_string());
    }
    println!("{}", heads.len());
}
