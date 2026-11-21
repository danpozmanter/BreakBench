// LEVEL: LANGUAGE

package main

import (
	"fmt"
	"time"
)

func main() {
	total := 1500*time.Millisecond + 500*time.Millisecond
	n := 5; _ = total + n // REJECT!
	fmt.Println(total.Milliseconds())
}
