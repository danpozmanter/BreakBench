package main

import (
	"fmt"
	"strings"
)

func main() {
	name := "ada"
	strings.ToUpper(name) // BREAK!
	fmt.Println(name) // CONTROL! fmt.Println(strings.ToUpper(name))
}
