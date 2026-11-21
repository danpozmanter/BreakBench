package main

import "fmt"

func main() {
	s := "abc"
	if len(s) > 0 && s[0] == 'a' {
		fmt.Println("yes")
	}
	if (len(s) > 0) & (s[0] == 'a') { fmt.Println("both") } // BREAK!
}
