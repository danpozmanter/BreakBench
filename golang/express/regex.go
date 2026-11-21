// LEVEL: STD

package main

import (
	"fmt"
	"regexp"
)

func main() {
	re := regexp.MustCompile(`^[a-z]+[0-9]{2}$`)
	fmt.Println(re.MatchString("abc12"), re.MatchString("abc1"))
}
