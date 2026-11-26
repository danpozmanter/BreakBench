package main

import (
	"fmt"
	"os"
	"regexp"
)

func main() {
	re := regexp.MustCompile(`^[a-z]+$`)
	if re.MatchString(os.Args[1]) {
		fmt.Println("accepted")
	} else {
		fmt.Println("rejected")
	}
}
