fn main() {
    let line = std::env::args().nth(1).unwrap();
    let pos = line.find(':');
    println!("{}", &line[pos + 1..]); // CONTROL! println!("{}", pos.map_or("", |p| &line[p + 1..]));
}
