// LEVEL: STD

fn main() {
    let status = std::process::Command::new("false").status().unwrap();
    println!("{}", status.code().unwrap());
}
