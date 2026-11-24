package main

import "fmt"

type User struct { Name *string }

func main() {
    decoded := User{Name: nil}
    fmt.Println(len(*decoded.Name)) // CONTROL! if decoded.Name == nil { fmt.Println("no name") } else { fmt.Println(len(*decoded.Name)) }
}
