// LEVEL: STD

fn parse_port(s: &str) -> Result<u16, std::num::ParseIntError> {
    s.parse()
}

fn main() {
    match parse_port("x") {
        Ok(p) => println!("{p}"),
        Err(_) => println!("error"),
    }
}
