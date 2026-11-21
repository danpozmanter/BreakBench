// LEVEL: STD

package main

import (
	"fmt"
	"regexp"
)

func main() {
	re := regexp.MustCompile(`^(a+)+$`)
	if re.MatchString("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa!") {
		fmt.Println("match")
	} else {
		fmt.Println("no match")
	}
}
