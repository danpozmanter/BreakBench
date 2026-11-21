package main

import "fmt"

func main() {
	seen := map[string]bool{}
	key := []int{1, 2}
	seen[fmt.Sprint(key)] = true
	key[0] = 9
	for e := range seen {
		if seen[e] {
			fmt.Println("found")
		} else {
			fmt.Println("lost")
		}
	}
}
