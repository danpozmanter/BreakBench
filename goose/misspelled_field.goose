struct Config { color: u8[..16] }

fn main() {
    var cfg = Config { color: "blue" };
    cfg.colour = "red"; // BREAK!
    print(cfg.color);
}
