package main

import (
	"fmt"
	"os"
	"regexp"
)

func main() {
	re := regexp.MustCompile(`^(a+)+$`)
	if re.MatchString(os.Args[1]) {
		fmt.Println("match")
	} else {
		fmt.Println("no match")
	}
}
