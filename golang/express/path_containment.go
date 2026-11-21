// LEVEL: STD

package main

import (
	"fmt"
	"path/filepath"
	"strings"
)

func main() {
	p := filepath.Join("/srv/app", "../../etc/passwd")
	rel, err := filepath.Rel("/srv/app", p)
	if err != nil || strings.HasPrefix(rel, "..") {
		fmt.Println("outside")
	} else {
		fmt.Println("inside")
	}
}
