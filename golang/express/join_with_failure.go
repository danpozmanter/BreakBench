// LEVEL: LANGUAGE

package main

import (
	"errors"
	"fmt"
)

func main() {
	result := make(chan error)
	go func() { result <- errors.New("bad input") }()
	if err := <-result; err != nil {
		fmt.Println("worker failed:", err)
	}
}
