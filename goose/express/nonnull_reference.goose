// LEVEL: LANGUAGE

struct Config { id: i64 }

fn main() {
    let c = Config { id: 7 };
    let missing: Config = null; // REJECT!
    if c.id == 7 {
        print("app");
    }
}
