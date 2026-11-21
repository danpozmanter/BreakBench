// LEVEL: STD

package main

import (
	"fmt"
	"os/exec"
)

func main() {
	out, _ := exec.Command("echo", "hi; touch /tmp/bb_x").Output()
	fmt.Print(string(out))
}
