fn main() {
    let flag = std::env::args().nth(1).unwrap();
    let mut status = "pending";
    if flag == "ok" {
        let status = "done"; // CONTROL! status = "done";
        eprintln!("status: {status}");
    }
    println!("{status}");
}
