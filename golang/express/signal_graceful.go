// LEVEL: STD

package main

import (
	"fmt"
	"os"
	"os/signal"
	"syscall"
)

func main() {
	ch := make(chan os.Signal, 1)
	signal.Notify(ch, syscall.SIGTERM)
	syscall.Kill(os.Getpid(), syscall.SIGTERM)
	<-ch
	fmt.Println("cleaned up")
}
