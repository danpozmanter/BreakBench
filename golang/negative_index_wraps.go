package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	readings := []int{10, 20, 30}
	i, _ := strconv.Atoi(os.Args[1])
	fmt.Println(readings[i] - readings[i-1]) // CONTROL! if i > 0 { fmt.Println(readings[i] - readings[i-1]) } else { fmt.Println("no previous") }
}
