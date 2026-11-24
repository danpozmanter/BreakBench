struct User {
    name ?string
}

fn main() {
    decoded := User{ name: none }
    println(decoded.name or { "" }.len) // CONTROL! if n := decoded.name { println(n.len) } else { println('no name') }
}
