// LEVEL: STD

package main

import (
	"fmt"
	"html"
)

func main() {
	fmt.Println(html.EscapeString(`<a href="x">Tom & Jerry</a>`))
}
