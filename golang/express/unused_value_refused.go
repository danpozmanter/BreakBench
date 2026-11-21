// LEVEL: LANGUAGE

package main

import (
	"fmt"
	"os"
)

func main() {
	price := 40 + len(os.Args) - 1
	total := price + 2
	doubled := price * 2 // REJECT!
	fmt.Println(total)
}
