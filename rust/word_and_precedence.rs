fn main() {
    let args: Vec<String> = std::env::args().collect();
    let ready = args[1] == "yes";
    let approved = args[2] == "yes";
    let ok = ready && approved;
    println!("{}", if ok { "go" } else { "wait" });
}
