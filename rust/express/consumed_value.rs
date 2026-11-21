// LEVEL: LANGUAGE

struct Handle {
    name: String,
}

fn close(h: Handle) -> String {
    h.name
}

fn main() {
    let h = Handle { name: "log".to_string() };
    let name = close(h);
    let _again = h.name.len(); // REJECT!
    println!("{}", if name == "log" { "closed" } else { "open" });
}
