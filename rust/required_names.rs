struct Offset {
    dx: i64,
    dy: i64,
}

fn move_by(o: Offset) {
    println!("{} {}", o.dx, o.dy);
}

fn main() {
    move_by(Offset { dx: 3, dy: 4 });
    move_by(Offset { 3, 4 }); // BREAK!
}
