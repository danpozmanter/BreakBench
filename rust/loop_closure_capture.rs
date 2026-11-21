fn main() {
    let mut fs: Vec<Box<dyn Fn() -> i32>> = Vec::new();
    for i in 0..3 {
        fs.push(Box::new(move || i));
    }
    let out: Vec<String> = fs.iter().map(|f| f().to_string()).collect();
    println!("{}", out.join(","));
}
