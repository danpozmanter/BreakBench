package main

import (
	"errors"
	"fmt"
	"os"
	"strconv"
)

func process(request string, id int) error {
	buf := make([]byte, 4096)
	copy(buf, fmt.Sprintf("%s#%d", request, id))
	if buf[0] != '{' {
		return errors.New("invalid request")
	}
	return nil
}

func main() {
	n, _ := strconv.Atoi(os.Args[1])
	failures := 0
	for i := 0; i < n; i++ {
		if process("not json", i) != nil {
			failures++
		}
	}
	if failures == n {
		fmt.Println("done")
	} else {
		fmt.Println("unexpected")
	}
}
