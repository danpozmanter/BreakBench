// LEVEL: LANGUAGE

package main

import (
	"errors"
	"fmt"
)

func use(fail bool) error {
	defer fmt.Println("released")
	if fail {
		return errors.New("bad")
	}
	return nil
}

func main() {
	use(false)
	use(true)
}
