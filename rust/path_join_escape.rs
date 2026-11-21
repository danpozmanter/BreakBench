use std::path::Path;

fn main() {
    let user = std::env::args().nth(1).unwrap();
    let joined = Path::new("/srv/app/uploads").join(user);
    let inside = joined.starts_with("/srv/app/uploads");
    println!("{}", if inside { "inside" } else { "escaped" });
}
