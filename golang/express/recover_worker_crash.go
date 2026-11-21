// LEVEL: LANGUAGE

package main

import "fmt"

func main() {
	crashed := make(chan bool)
	go func() {
		defer func() { crashed <- recover() != nil }()
		panic("boom")
	}()
	if <-crashed {
		fmt.Println("worker crashed")
	}
}
