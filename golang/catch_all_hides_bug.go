package main

import (
	"fmt"
	"strconv"
	"strings"
)

func parseOrder(line string) (int, error) {
	parts := strings.Split(line, ",")
	return strconv.Atoi(parts[2]) // BREAK!
	// CONTROL! return strconv.Atoi(parts[1])
}

func main() {
	qty, err := parseOrder("widget,5")
	if err != nil {
		fmt.Println("invalid order")
		return
	}
	fmt.Println(qty)
}
