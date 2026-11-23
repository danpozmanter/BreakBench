struct User {
    name ?string
}

fn main() {
    decoded := User{ name: none }
    println(decoded.name or { "" }.len) // BREAK!
}
