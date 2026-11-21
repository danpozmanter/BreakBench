package main

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"
)

func main() {
	joined := filepath.Join("/srv/app/uploads", os.Args[1])
	if strings.HasPrefix(joined, "/srv/app/uploads/") {
		fmt.Println("inside")
	} else {
		fmt.Println("escaped")
	}
}
