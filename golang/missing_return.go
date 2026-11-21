package main

import (
	"fmt"
	"os"
	"strconv"
)

func grade(score int) string {
	if score > 50 {
		return "pass"
	}
	if score < 50 {
		return "fail"
	}
	// CONTROL! return "borderline"
}

func main() {
	score, _ := strconv.Atoi(os.Args[1])
	fmt.Println(grade(score))
}
