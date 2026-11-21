// LEVEL: LANGUAGE

package main

import "fmt"

func work() {
	defer fmt.Println("cleanup")
	panic("boom")
}

func main() {
	defer func() {
		if recover() != nil {
			fmt.Println("recovered")
		}
	}()
	work()
}
