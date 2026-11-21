// LEVEL: STD

package main

import (
	"fmt"
	"os"
)

func main() {
	if _, ok := os.LookupEnv("BB_UNSET"); !ok {
		fmt.Println("absent")
	} else {
		fmt.Println("present")
	}
}
