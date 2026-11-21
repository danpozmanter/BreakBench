// LEVEL: STD

package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	if _, err := strconv.Atoi(os.Args[1]); err != nil {
		fmt.Println("invalid")
	} else {
		fmt.Println("valid")
	}
}
