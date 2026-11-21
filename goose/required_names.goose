struct Offset { dx: i64, dy: i64 }

fn move(o: Offset) { print(o.dx, " ", o.dy); }

fn main() {
    move(Offset { 4, 3 });
}
