// LEVEL: STD

package main

import (
	"errors"
	"fmt"
	"os/exec"
)

func main() {
	err := exec.Command("false").Run()
	var exit *exec.ExitError
	if errors.As(err, &exit) {
		fmt.Println(exit.ExitCode())
	}
}
