// LEVEL: LANGUAGE

package main

import (
	"fmt"
	"strings"
)

func main() {
	ch := make(chan int)
	go func() {
		for v := 1; v <= 3; v++ {
			ch <- v
		}
		close(ch)
	}()
	var got []string
	for v := range ch {
		got = append(got, fmt.Sprint(v))
	}
	fmt.Println(strings.Join(got, " "))
}
