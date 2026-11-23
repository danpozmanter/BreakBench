use std::fs;

fn main() {
    fs::create_dir_all("/tmp/bb_files").unwrap();
    fs::write("/tmp/bb_files/report.txt", "secret\n").unwrap();

    let name = "report.txt\0.png";
    if !name.ends_with(".png") {
        println!("rejected");
        return;
    }
    match fs::read_to_string(format!("/tmp/bb_files/{name}")) {
        Ok(text) => print!("{text}"),
        Err(_) => println!("rejected"),
    }
}
