// LEVEL: STD

package main

import (
	"errors"
	"fmt"
)

func main() {
	cause := errors.New("not found")
	err := fmt.Errorf("loading config: %w", cause)
	fmt.Println(err)
	fmt.Println(errors.Unwrap(err))
}
