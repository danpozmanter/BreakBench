package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	file, err := os.Create("/tmp/bb_report.txt")
	if err != nil {
		panic(err)
	}
	report := bufio.NewWriter(file)
	fmt.Fprintln(report, "total=42")
}
