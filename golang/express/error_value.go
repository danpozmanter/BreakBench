// LEVEL: LANGUAGE

package main

import (
	"fmt"
	"strconv"
)

func parsePort(s string) (int, error) { return strconv.Atoi(s) }

func main() {
	if p, err := parsePort("x"); err != nil {
		fmt.Println("error")
	} else {
		fmt.Println(p)
	}
}
