// LEVEL: STD

package main

import (
	"context"
	"errors"
	"fmt"
	"os/exec"
	"time"
)

func main() {
	ctx, cancel := context.WithTimeout(context.Background(), 100*time.Millisecond)
	defer cancel()
	err := exec.CommandContext(ctx, "sleep", "10").Run()
	if errors.Is(ctx.Err(), context.DeadlineExceeded) && err != nil {
		fmt.Println("killed")
	} else {
		fmt.Println("finished")
	}
}
