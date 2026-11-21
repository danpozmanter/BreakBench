// LEVEL: LANGUAGE

package main

import "fmt"

func main() {
	s := map[[2]int]bool{{1, 2}: true}
	fmt.Println(s[[2]int{1, 2}])
}
