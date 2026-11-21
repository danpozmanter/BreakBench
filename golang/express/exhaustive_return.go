// LEVEL: LANGUAGE

package main

import "fmt"

func grade(score int) string {
	if score > 50 {
		return "pass"
	}
	return "fail"
}

func bad(score int) string { // REJECT!
	if score > 50 { // REJECT!
		return "pass" // REJECT!
	} // REJECT!
} // REJECT!

func main() {
	fmt.Println(grade(60))
}
