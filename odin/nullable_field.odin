package main

import "core:fmt"

User :: struct { name: Maybe(string) }

main :: proc() {
    decoded := User{name = nil}
    fmt.println(len(decoded.name)) // BREAK!
    // CONTROL! fmt.println(len(decoded.name.?))
}
