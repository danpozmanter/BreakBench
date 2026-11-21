// LEVEL: LANGUAGE

package main

import "fmt"

func main() {
	i := 0
	i++
	i = i++ // REJECT!
	fmt.Println(i)
}
