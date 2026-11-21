// LEVEL: STD

package main

import (
	"errors"
	"fmt"
)

var ErrA = errors.New("A")
var ErrB = errors.New("B")

func work(a bool) error {
	if a {
		return ErrA
	}
	return ErrB
}

func step(a bool) error {
	err := work(a)
	if errors.Is(err, ErrA) {
		fmt.Println("caught A")
		return nil
	}
	return err
}

func main() {
	step(true)
	if errors.Is(step(false), ErrB) {
		fmt.Println("passed B")
	}
}
